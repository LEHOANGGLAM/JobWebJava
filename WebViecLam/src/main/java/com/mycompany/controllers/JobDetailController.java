/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.service.CompanyService;
import com.mycompany.service.JobLocaService;
import com.mycompany.service.JobService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
public class JobDetailController {

    @Autowired
    private JobService jobService;
    @Autowired
    private CompanyService companyService;
    @Autowired
    private JobLocaService jobLocaService;

    @GetMapping("/jobDetail/{jId}")
    public String jobDetail(Model model, @PathVariable(value = "jId") int jId) {
        model.addAttribute("job", this.jobService.getJobById(jId));
        model.addAttribute("c", this.companyService.getCompanyByJobPostId(jId));
        model.addAttribute("l", this.jobLocaService.getLocationByJobPostId(jId));

        return "jobDetail";
    }
}
