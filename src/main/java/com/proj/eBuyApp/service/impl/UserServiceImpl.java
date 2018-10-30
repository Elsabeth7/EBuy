package com.proj.eBuyApp.service.impl;

import com.proj.eBuyApp.domain.User;
import com.proj.eBuyApp.repository.UserRepository;
import com.proj.eBuyApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> findAll() {
        return (List<User>) userRepository.findAll();
    }

    public void add(User user) {
        userRepository.save(user);
    }

    @Override
    public User get(Long id) {
        return userRepository.findOne(id);
    }

    @Override
    public void delete(Long id) {
        userRepository.delete(id);
    }

    @Override
    public User findByUsername(String name) {
        return userRepository.findByUsername(name);
    }
}
