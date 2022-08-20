package ru.artemkireev.twitapp.security.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.artemkireev.twitapp.security.entities.Role;
import ru.artemkireev.twitapp.security.entities.User;
import ru.artemkireev.twitapp.security.repositories.UserRepo;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {

    @Autowired
    private UserRepo userRepo;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addNewUser(User user, Map<String, Object> model) {
        User dbUserForExistingCheck = userRepo.findByUsername(user.getUsername());

        if (dbUserForExistingCheck != null) {
            model.put("message", "User exists");
            return "registration";
        }

        user.set_active(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);
        return "redirect:login";
    }
}
