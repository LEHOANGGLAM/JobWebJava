/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mycompany.pojo.New1;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.UserService;
import java.io.IOException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author PC
 */
@Controller
@ControllerAdvice
public class MyProfileController {

    @Autowired
    private Cloudinary cloudinary;
    @Autowired
    private Environment env;
    @Autowired
    private UserService userService;

    
    @GetMapping("/myProfile/{uId}")
    public String getInfo(Model model, @PathVariable(value = "uId") int uId, @RequestParam Map<String, String> params) {    
        model.addAttribute("u", this.userService.getUserById(uId));
        return "myProfile";
    }

//    @PutMapping("/myProfile")
//    public String updateProfile(@RequestBody UserAccount params, HttpSession session) {
//
//        try {
//            Map r = this.cloudinary.uploader().upload(params.getFile,
//                    ObjectUtils.asMap("resource_type", "auto"));
//            String img = (String) r.get("secure_url");
//            //Phuong thuc update UserAccount
//        } catch (IOException ex) {
//            Logger.getLogger(MyProfileController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return "myProfile";
//    }

}
