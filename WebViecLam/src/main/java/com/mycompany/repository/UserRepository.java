/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;


import java.util.List;
import org.springframework.security.core.userdetails.User;

/**
 *
 * @author PC
 */
public interface UserRepository {
    boolean addUser(User user);
    List<User> getUsers(String username);
    
}
