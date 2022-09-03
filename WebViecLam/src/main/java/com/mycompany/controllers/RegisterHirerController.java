/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.CompanyService;
import com.mycompany.service.UserService;
import com.mycompany.service.UserTypeService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author PC
 */
@Controller
@ControllerAdvice
@PropertySource("classpath:messages.properties")
public class RegisterHirerController {

    @Autowired
    private Environment env;

    @Autowired
    private UserService userService;

    @Autowired
    private UserTypeService userTypeService;

    @Autowired
    private CompanyService companyService;

    @GetMapping("/registerHirer")
    public String registerHirerView(Model model) {
        model.addAttribute("user", new UserAccount());
        return "registerHirer";
    }

    @PostMapping("/registerHirer")
    public String registerHirer(Model model,
            @ModelAttribute(value = "user") UserAccount user,
            @RequestParam("company-name") String name,
            @RequestParam("company-email") String email,
            @RequestParam("business-type") String type) {
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
            user.setUserTypeId(this.userTypeService.getUserTypeById(3));
            
            int typeid = Integer.valueOf(type);
           
            if (this.userService.addUser(user) == true) {
                Company comp = new Company();
                comp.setUserAccountId(user);
                comp.setCompanyName(name);
                comp.setBusinessTypeId(this.userTypeService.getBusinessTypeById(typeid));
                comp.setCompanyEmail(email);

                this.companyService.addOrUpdateCompany(comp);
                return "redirect:/login";
            } else {
                errMsg = "Da co loi xay ra!";
            }
        } else {
            errMsg = "The passwords doesn't match!";
        }

        model.addAttribute("errMsg", errMsg);

        return "registerHirer";
    }

    
    
    
}
