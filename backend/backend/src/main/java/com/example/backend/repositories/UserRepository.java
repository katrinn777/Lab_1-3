package com.example.backend.repositories;

import java.util.Optional;
import com.example.backend.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<User, Long> {
    @Query("SELECT u FROM users u WHERE u.login = :login")
    public Optional<User> findByName(@Param("login") String login);

    @Query("SELECT u FROM users u WHERE u.email = :email")
    public Optional<User> findByEmail(@Param("email") String email);

    @Query("SELECT u FROM users u WHERE u.id = :id")
    public Optional<User> findById(@Param("id") Long id);

    @Query("SELECT u FROM users u WHERE u.token = :userToken")
    public Optional<User> findByToken(@Param("userToken") String userToken);

    @Query("SELECT u FROM users u WHERE u.login = :login")
    public Optional<User> findByLogin(@Param("login") String login);
}