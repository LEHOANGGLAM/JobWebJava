/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.service.CateService;
import com.mycompany.service.JobService;
import com.mycompany.service.JobTypeService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.mycompany.service.LocationService;


/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
public class IndexController {

    @Autowired
    private JobTypeService jobTypeService;
    @Autowired
    private LocationService jobLocaService;
    @Autowired
    private CateService cateService;

    @Autowired
    private JobService jobService;
    @Autowired
    private Environment env;

    

    @ModelAttribute
    public void commonAttribute(Model model) {
        model.addAttribute("cate", this.cateService.getCateList());
        model.addAttribute("cateChild", this.cateService.getCateChild());
    }

    @RequestMapping("/")
    public String index(Model model,
            @RequestParam Map<String, String> params) {

        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("jobposts", this.jobService.getJobs(params, page));

        //System.out.println(context.getContextPath());
        
        return "index";
    }
}
