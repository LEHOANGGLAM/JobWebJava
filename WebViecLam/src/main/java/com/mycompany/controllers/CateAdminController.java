/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mycompany.pojo.Category;
import com.mycompany.service.CateService;
import com.mycompany.service.CompanyService;
import java.io.IOException;
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
    public String addUserAdmin(Model model) {
        //model.addAttribute("cate", new Category());
        return "addUserAdmin";
    }
}
