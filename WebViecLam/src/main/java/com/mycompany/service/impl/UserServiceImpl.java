/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.UserAccount;
import com.mycompany.repository.UserRepository;
import com.mycompany.service.UserService;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */
@Service("userDetailsService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository UserRepository;

    @Override
    public boolean addUser(User user) {
        return this.UserRepository.addUser(user);
    }
    @Override
    public List<UserAccount> getUsers() {
        return this.UserRepository.getUsers();
    }
    @Override
    public UserAccount getUserById(int id){
         return this.UserRepository.getUserById(id);
    }
    
    @Override
     public boolean deleteUser(int id) {
        return this.UserRepository.deleteUser(id);
    }

    @Override
    public List<UserAccount> getUserByUsername(String username) {
        return this.UserRepository.getUserByUsername(username);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<UserAccount> users = this.getUserByUsername(username);
        if (!users.isEmpty()) {
            throw new UsernameNotFoundException("User does not exist!");
        }
        UserAccount user = users.get(0);

        Set<GrantedAuthority> auth = new HashSet<>();
        auth.add(new SimpleGrantedAuthority(user.getUserTypeId().toString()));

        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), auth);
    }

    @Override
    public boolean updateConfirmUser(int id, int isComfirm) {
         return this.UserRepository.updateConfirmUser(id,isComfirm);
    }

}
