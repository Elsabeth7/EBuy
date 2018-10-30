package com.proj.eBuyApp.service;

import com.proj.eBuyApp.domain.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    List<User> findAll();

    void add(User user);

    User get(Long id);

    void delete(Long id);

    User findByUsername(String name);
}
