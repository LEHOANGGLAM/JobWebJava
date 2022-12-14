/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.UserAccount;
import com.mycompany.service.UserService;
import com.mycompany.service.UserTypeService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
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

    @Autowired
    private UserTypeService userTypeService;
//     @Autowired
//     private WebAppValidator usernameValidator;
//     
//     @InitBinder
//     public void initBinder(WebDataBinder binder){
//         binder.setValidator(usernameValidator);
//     }

    @GetMapping("/register")
    public String registerView(Model model) {
        model.addAttribute("user", new UserAccount());
        return "register";
    }
    
    

    @PostMapping("/register")
    public String register(Model model, @ModelAttribute(value = "user") UserAccount user) {
        String errMsg = "";
        String alertMsg = "";

        if (user.getPassword().equals(user.getConfirmedPassword())) {
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            try {
                Date d = f.parse(user.getDateString());
                user.setDateOfBirth(d);
//                Date r = new Date();
//                String r1 = r.toString();

            } catch (ParseException ex) {
                Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            }

            user.setRegistrationDate(new Date());
            
            user.setUserTypeId(this.userTypeService.getUserTypeById(2));
            if (this.userService.addUser(user) == true) {
                return "redirect:/login";
            } else {
                errMsg = "Da co loi xay ra!";
            }
        } else {
            errMsg = "The passwords doesn't match!";
        }

        model.addAttribute("errMsg", errMsg);

        return "register";
    }
    
    
}
