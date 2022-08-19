/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.UserAccount;
import java.util.List;
import org.springframework.security.core.userdetails.User;

/**
 *
 * @author PC
 */
public interface UserRepository {

    boolean addUser(User user);

    List<User> getUserByUsername(String username);

    boolean deleteUser(int id);
    List<UserAccount> getUsers();
    UserAccount getUserById(int id);
     boolean updateConfirmUser(int id, int isComfirm);
}
