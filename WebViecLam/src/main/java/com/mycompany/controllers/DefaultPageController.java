/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.service.CateService;
import com.mycompany.service.CompanyService;
import com.mycompany.service.JobLocaService;
import com.mycompany.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
public class DefaultPageController {

    @Autowired
    private CateService cateService;

    @RequestMapping("/{linkCate}")
    public String Default(Model model, @PathVariable(value = "linkCate") String linkCate) {
        model.addAttribute("c", this.cateService.getCateByLink(linkCate));
        return "defaultPage";
    }
}
