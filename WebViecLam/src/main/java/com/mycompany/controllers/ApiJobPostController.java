/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.JobService;
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
@RequestMapping("/api")
public class ApiJobPostController {

    @Autowired
    private JobService jobPostService;

    @GetMapping("/jobposts")
    public ResponseEntity<List<Object[]>> getJobPosts() {
     //   HttpSession session;
        //  UserAccount user = (UserAccount)session.getAttribute("currentUser");
        return new ResponseEntity<>(this.jobPostService.getJobs(null, 0), HttpStatus.OK);
    }

//    @DeleteMapping("/accounts/{id}")
//    @ResponseStatus(HttpStatus.NO_CONTENT)
//    public void deleteAccount(@PathVariable(value = "id") int id) {
//        this.userService.deleteUser(id);
//    }
//
//    @PutMapping("/accounts")
//    public int updateAcc(@RequestBody UserAccount params, HttpSession session) {
//
//        UserAccount account = userService.getUserById(params.getId());
//        int isComfirm = account.getIsComfirm();
//        if (isComfirm == 1) {
//            isComfirm = 0;
//        } else {
//            isComfirm = 1;
//        }
//
//        // session.setAttribute("acc", account);
//        this.userService.updateConfirmUser(params.getId(), isComfirm);
//        return isComfirm;
//    }

}
