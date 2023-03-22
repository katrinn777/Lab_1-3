package ru.iu3.lab_1_3;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import ru.iu3.lab_1_3.databinding.ActivityMainBinding;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.io.IOUtils;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

interface TransactionEvents {
    String enterPin(int ptc, String amount);
    void transactionResult(boolean result);
}


public class MainActivity extends AppCompatActivity implements TransactionEvents {

    protected String getPageTitle(String html)
    {
        int pos = html.indexOf("<title");
        String p="not found";
        if (pos >= 0)
        {
            int pos2 = html.indexOf("<", pos + 1);
            if (pos >= 0)
                p = html.substring(pos + 7, pos2);
        }
        return p;
    }

    protected void testHttpClient()
    {
        new Thread(() -> {
            try {
                HttpURLConnection uc = (HttpURLConnection)
                        (new URL("https://www.wikipedia.org").openConnection());
                InputStream inputStream = uc.getInputStream();
                String html = IOUtils.toString(inputStream);
                String title = getPageTitle(html);
                runOnUiThread(() ->
                {
                    Toast.makeText(this, title, Toast.LENGTH_LONG).show();
                });

            } catch (Exception ex) {
                Log.e("fapptag", "Http client fails", ex);
            }
        }).start();
    }
    public void onButtonClick(android.view.View view) {
        testHttpClient();
        //startActivity(it);
    }
    private String pin;
    ActivityResultLauncher activityResultLauncher;

    // Used to load the 'lab_1_3' library on application startup.
    static {
        System.loadLibrary("lab_1_3");
        System.loadLibrary("mbedcrypto");
    }

    private ActivityMainBinding binding;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        int init = initRng();
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btn = (Button) findViewById(R.id.btn);
        btn.setText(stringFromJNI());

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                testHttpClient();
            }
        });

        activityResultLauncher = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                new ActivityResultCallback<ActivityResult>() {
                    @Override
                    public void onActivityResult(ActivityResult result) {
                        if (result.getResultCode() == Activity.RESULT_OK) {
                            Intent data = result.getData();
                            assert data != null;
                            pin = data.getStringExtra("pin");
                            synchronized (MainActivity.this) {
                                MainActivity.this.notifyAll();
                            }
                            // Toast.makeText(MainActivity.this, pin, Toast.LENGTH_SHORT).show();
                        }
                    }
                }
        );

        btn.setOnClickListener(view -> {
            new Thread(() -> {
                try {
                    byte[] trd = stringToHex("9F0206000000000100");
                    boolean ok = transaction(trd);
                } catch (Exception ex) {
                    // todo: log error
                }
            }).start();
        });
    }
        @Override
        public void transactionResult(boolean result) {
            runOnUiThread(()-> {
                Toast.makeText(MainActivity.this, result ? "ok" : "failed", Toast.LENGTH_SHORT).show();
            });
        }

        @Override
        public String enterPin(int ptc, String amount) {
            pin = new String();
            Intent it = new Intent(MainActivity.this, PinpadActivity.class);
            it.putExtra("ptc", ptc);
            it.putExtra("amount", amount);
            synchronized (MainActivity.this) {
                activityResultLauncher.launch(it);
                try {
                    MainActivity.this.wait();
                } catch (Exception ex) {
                    //todo: log error
                }
            }
            return pin;
        }


    public native String stringFromJNI();
    public static native int initRng();
    public static native byte[] randomBytes(int no);

    public static native byte[] encrypt (byte[] key, byte [] array);

    public static native byte[] decrypt (byte[] key, byte[] array);

    public static byte[] stringToHex(String s) {
        byte[] hex;
        try { hex = Hex.decodeHex(s.toCharArray()); }
        catch (DecoderException ex) { hex = null; }
        return hex;
    }

    public native boolean transaction(byte[] trd);
}
