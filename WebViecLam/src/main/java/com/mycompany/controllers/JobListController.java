/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.JobType;
import com.mycompany.service.JobLocaService;
import com.mycompany.service.JobService;
import com.mycompany.service.JobTypeService;
import java.util.Map;
import javax.ws.rs.core.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author admin
 */
@Controller
@ControllerAdvice
@PropertySource("classpath:messages.properties")
public class JobListController {

    @Autowired
    private JobTypeService jobTypeService;
    @Autowired
    private JobLocaService jobLocaService;

    @Autowired
    private JobService jobService;
    @Autowired
    private Environment env;

    @RequestMapping("/joblist")
    public String list(Model model, @RequestParam Map<String, String> params) {

        model.addAttribute("getJobTypes", this.jobTypeService.getJobTypes());
        model.addAttribute("getJobLocations", this.jobLocaService.getJobLocations());

        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("jobposts", this.jobService.getJobs(params, page));
        model.addAttribute("jobCounter", this.jobService.countJobPosts());
        model.addAttribute("pageSize", Integer.parseInt(env.getProperty("page.size")));

        return "jobList";
    }
}
