/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.CompanyService;
import com.mycompany.service.UserService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author dell
 */
@RestController
@RequestMapping("admin/api")
public class ApiAccountController {

    @Autowired
    private UserService userService;

    @GetMapping("/accounts")
    public ResponseEntity<List<UserAccount>> getAccounts() {
        return new ResponseEntity<>(this.userService.getUsers(), HttpStatus.OK);
    }

    @DeleteMapping("/accounts/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteAccount(@PathVariable(value = "id") int id) {
        this.userService.deleteUser(id);
    }

    @PutMapping("/accounts")
    public int updateAcc(@RequestBody UserAccount params, HttpSession session) {

        int isComfirm = params.getIsComfirm();
        if (isComfirm == 1) {
            isComfirm = 0;
        } else {
            isComfirm = 1;
        }
       //UserAccount account = userService.getUserById(params.getId());
      //  account.setIsComfirm(isComfirm);
      
      
      
      
      
       // session.setAttribute("acc", account);
         this.userService.updateConfirmUser(params.getId(),isComfirm);
        return isComfirm; 
    }
    
    
}
