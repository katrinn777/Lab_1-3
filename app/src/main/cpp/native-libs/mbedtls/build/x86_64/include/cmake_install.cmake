# Install script for directory: /home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/gallaann/Android/Sdk/ndk/23.1.7779620/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/aes.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/aria.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/asn1.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/asn1write.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/base64.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/bignum.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/build_info.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/camellia.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ccm.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/chacha20.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/chachapoly.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/check_config.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/cipher.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/cmac.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/compat-2.x.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/config_psa.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/constant_time.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/debug.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/des.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/dhm.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ecdh.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ecdsa.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ecjpake.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ecp.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/entropy.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/error.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/gcm.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/hkdf.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/legacy_or_psa.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/lms.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/mbedtls_config.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/md.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/md5.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/net_sockets.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/nist_kw.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/oid.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/pem.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/pk.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/pkcs12.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/pkcs5.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/pkcs7.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/platform.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/platform_time.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/platform_util.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/poly1305.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/private_access.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/psa_util.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ripemd160.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/rsa.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/sha1.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/sha256.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/sha512.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ssl.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/threading.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/timing.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/version.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/x509.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/x509_crl.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/x509_crt.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_builtin_composites.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_compat.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_config.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_driver_common.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_extra.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_platform.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_se_driver.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_sizes.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_struct.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_types.h"
    "/home/gallaann/AndroidStudioProjects/libs/mbedits/mbedtls/include/psa/crypto_values.h"
    )
endif()

