/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import static com.cloudinary.utils.ObjectUtils.asMap;
import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.New1;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.UserService;
import java.io.IOException;
import java.util.HashSet;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.security.core.Authentication;
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
    public String getInfo(@PathVariable(value = "uId") int uId, Model model, Authentication a) {

        model.addAttribute("u", this.userService.getUserById(uId));
        return "myProfile";
    }

//    @GetMapping("/myProfile")
//    public String myProfile() {
//        return "myProfile";
//    }

    
    @PostMapping("/myProfile/{uId}")
    public String updateProfile(HttpSession session, 
            @PathVariable(value = "uId") int uId,
            @ModelAttribute(value = "u") UserAccount u,
            Model model) {
            
         

    
//        try {
//            Map r = this.cloudinary.uploader().upload(params.getFile().getBytes(),
//                    ObjectUtils.asMap("resource_type", "auto"));
//            String img = (String) r.get("secure_url");
//            //Phuong thuc update UserAccount
//        } catch (IOException ex) {
//            Logger.getLogger(MyProfileController.class.getName()).log(Level.SEVERE, null, ex);
//        }
          UserAccount user = (UserAccount) session.getAttribute("currentUser");
          
         
          user.setFirstName(u.getFirstName());
          user.setLastName(u.getLastName());
          user.setEmail(u.getEmail());
          user.setContactNumber(u.getContactNumber());
          user.setAboutMe(u.getAboutMe());
        
          this.userService.updateUser(user);

        return "myProfile";
    }

    @RequestMapping("/userDetail/{uId}")
    public String userDetail(@PathVariable(value = "uId") int uId, Model model, Authentication a) {

        model.addAttribute("u", this.userService.getUserById(uId));
        return "userDetail";
    }

}
