/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.service.CateService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
@RequestMapping("/admin")
public class HomeAdminController {

    @Autowired
    private CateService cateService;

    @ModelAttribute
    public void commonAttribute(Model model) {
        model.addAttribute("cate", this.cateService.getCateList());
    }

    @GetMapping("/home")
    public String index(Model model,
            @RequestParam Map<String, String> params) {

        return "home";
    }
}
