/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
public class IndexController {
//     @Autowired
//    private CategoryService categoryService;
//    @Autowired
//    private ProductService productService;

    @RequestMapping("/")
    public String index(Model model,
            @RequestParam Map<String, String> params) {

//        model.addAttribute("categories", this.categoryService.getCategories());
//        model.addAttribute("products", this.productService.getProducts(params, 0));
//        
        return "index";
    }
}
