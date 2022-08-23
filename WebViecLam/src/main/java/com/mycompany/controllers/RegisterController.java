/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.UserAccount;
import com.mycompany.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author PC
 */
@Controller
@ControllerAdvice
@PropertySource("classpath:messages.properties")
public class RegisterController {

    @Autowired
    private Environment env;

    @Autowired
    private UserService userService;
//     @Autowired
//     private WebAppValidator usernameValidator;
//     
//     @InitBinder
//     public void initBinder(WebDataBinder binder){
//         binder.setValidator(usernameValidator);
//     }

    @GetMapping("/register")
    public String registerView(Model model) {

        model.addAttribute("user", this.userService.getUsers());

        return "register";
    }

    @PostMapping("/register")
    public String register(Model model, @ModelAttribute(value = "user") UserAccount user) {
        String errMsg = "";
        if (user.getPassword().equals(user.getConfirmedPassword())) {
            if (this.userService.addUser(user) == true)
                return "redirect:/login";
            else 
                errMsg = "Da co loi xay ra!";
        } else 
            errMsg = "Mat khau khong dung";
        
        model.addAttribute("err", errMsg); 
        
        return "register";
    }
}
