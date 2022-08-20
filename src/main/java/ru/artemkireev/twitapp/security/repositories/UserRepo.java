package ru.artemkireev.twitapp.security.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.artemkireev.twitapp.security.entities.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
