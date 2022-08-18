/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

/**
 *
 * @author PC
 */
import java.util.Map;
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


@Controller
@ControllerAdvice
@PropertySource("classpath:messages.properties")
public class LoginController {
     @GetMapping("/login")
     public String login(){
         return "login";
     }
     
//      @GetMapping("/register")
//     public String registerView(Model model) {
//         model.addAttribute("user", new User());
//         return "register";
//     }
//     
//     @PostMapping("/register")
//     public String register(@ModelAttribute(value = "user") User user)  {
//         if(user.getPassword().equals(user.getConfirmPassword())){
//             
//         }
//     }
//     
   
}
