package com.example.lesson60.repository;

import com.example.lesson60.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, String> {
    User getById(String id);
}
