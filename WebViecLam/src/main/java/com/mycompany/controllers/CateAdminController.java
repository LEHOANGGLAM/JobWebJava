/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mycompany.pojo.Category;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.CateService;
import com.mycompany.service.CompanyService;
import com.mycompany.service.UserService;
import com.mycompany.service.UserTypeService;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
@RequestMapping("/admin")
public class CateAdminController {

    @Autowired
    private CateService cateService;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private UserTypeService userTypeService;
    
    @GetMapping("/cate")
    public String cate(Model model) {
        //model.addAttribute("cate", new Category());
        return "category";
    }

    @GetMapping("/userManager")
    public String userManager(Model model) {
        //model.addAttribute("cate", new Category());
        return "userManager";
    }

    @GetMapping("/addUserAdmin")
    public String addUserAdminView(Model model) {
        model.addAttribute("user", new UserAccount());
        return "addUserAdmin";
    }
    
    @PostMapping("/addUserAdmin")
    public String addUserAdmin(Model model, @ModelAttribute(value = "user") UserAccount user) {
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
                return "redirect:/userManager";
            } else {
                errMsg = "Da co loi xay ra!";
            }
        } else {
            errMsg = "The passwords doesn't match!";
        }

        model.addAttribute("errMsg", errMsg);

        return "addUserAdmin";
    }
}
