/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.service.CompanyService;
import com.mycompany.service.JobService;
import javax.swing.JFrame;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import com.mycompany.service.LocationService;
import java.util.Map;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
public class CompanyDetailController {

    @Autowired
    private JobService jobService;
    @Autowired
    private CompanyService companyService;
    @Autowired
    private LocationService locationService;

    @GetMapping("/companyDetail/{cId}")
    public String companyDetail(Model model, @PathVariable(value = "cId") int cId, @RequestParam Map<String, String> params) {

        model.addAttribute("c", this.companyService.getComById(cId));
        model.addAttribute("l", this.locationService.getLocaByComId(cId));
        //  model.addAttribute("countLoca", this.locationService.countLocaByComId(cId));
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("jobposts", this.jobService.getJobs(params, page));
        model.addAttribute("comment", this.companyService.getComments(cId));
        return "companyDetail";
    }
}
