/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service;

import com.mycompany.pojo.UserAccount;
import com.mycompany.pojo.UserType;
import java.util.List;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author PC
 */
public interface UserService extends UserDetailsService {

    boolean addUser(UserAccount user);

    UserAccount getUserByUsername(String username);

    boolean deleteUser(int id);

    List<UserAccount> getUsers();

    UserAccount getUserById(int id);

    boolean updateConfirmUser(int id, int isComfirm);

    UserAccount getInfo(int id);

    boolean updateUser(UserAccount user);

    List<UserAccount> getUserAppliedByJobPostId(int id);

}
