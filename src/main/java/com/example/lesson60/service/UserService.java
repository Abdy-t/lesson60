package com.example.lesson60.service;

import com.example.lesson60.model.User;
import com.example.lesson60.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository=userRepository;
    }

    public User getUser(String id) {
        return userRepository.getById(id);
    }
}
