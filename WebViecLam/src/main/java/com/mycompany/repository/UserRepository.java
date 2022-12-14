/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.UserAccount;
import java.util.List;
import org.springframework.security.core.userdetails.User;

/**
 *
 * @author PC
 */
public interface UserRepository {

    boolean addUser(UserAccount user);

    UserAccount getInfo(int id);

    UserAccount getUserByUsername(String username);

    boolean deleteUser(int id);

    List<UserAccount> getUsers();

    UserAccount getUserById(int id);

    boolean updateConfirmUser(int id, int isComfirm);

    boolean updateUser(UserAccount user);

    List<UserAccount> getUserAppliedByJobPostId(int id);

    List<UserAccount> getUsersAdmin();
}
