/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.service.CateService;
import com.mycompany.service.StatsService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
@RequestMapping("/admin")
public class StatsAdminController {

    @Autowired
    private StatsService statsService;

    @GetMapping("/stats")
    public String cate(Model model, @RequestParam(value = "quarter", defaultValue = "0") int quarter,
            @RequestParam(value = "year", defaultValue = "2022") int year,
            HttpServletRequest hsr) {
        model.addAttribute("appStats", this.statsService.applicationStats(quarter, year));

        hsr.setAttribute("tagQuarter", quarter);
        hsr.setAttribute("tagYear", year);
        return "applicationStats";
    }
}
