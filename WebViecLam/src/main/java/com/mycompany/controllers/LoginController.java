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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@ControllerAdvice
@PropertySource("classpath:messages.properties")
public class LoginController {
     
     @Autowired
      private Environment env;
     
     @RequestMapping("/login")
   public String list(Model model, @RequestParam Map<String, String> params) {

//        model.addAttribute("categories", this.categoryService.getCategories());
//        model.addAttribute("products", this.productService.getProducts(params, 0));
//        
        return "login";
    }
}
