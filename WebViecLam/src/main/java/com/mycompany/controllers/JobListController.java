/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.JobType;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.AppliService;
import com.mycompany.service.JobService;
import com.mycompany.service.JobTypeService;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
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
import com.mycompany.service.LocationService;
import javax.servlet.http.HttpSession;

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
    private LocationService jobLocaService;
    @Autowired
    private AppliService appliService;

    @Autowired
    private JobService jobService;
    @Autowired
    private Environment env;

    @RequestMapping("/joblist")
    public String list(Model model, @RequestParam Map<String, String> params, HttpServletRequest hsr, HttpSession session) {

        model.addAttribute("getJobTypes", this.jobTypeService.getJobTypes());
        model.addAttribute("cities", this.jobLocaService.getCities());

        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("jobposts", this.jobService.getJobs(params, page));
        model.addAttribute("jobCounter", this.jobService.countJobPosts());
        model.addAttribute("pageSize", Integer.parseInt(env.getProperty("page.size")));

        String typeId = params.getOrDefault("jobTypeId", "");
        String locaId = params.getOrDefault("cityId", "");
        String search = params.getOrDefault("kw", "Search...");

        model.addAttribute("tagPage", page);
        model.addAttribute("tagCate", typeId);
        model.addAttribute("tagLoca", locaId);
        model.addAttribute("se", search);
        return "jobList";
    }

    @RequestMapping("/jobApplied")
    public String jobApplied(Model model, @RequestParam Map<String, String> params, HttpServletRequest hsr, HttpSession session) {

        UserAccount user = (UserAccount) session.getAttribute("currentUser");

        model.addAttribute("jobApplied", this.jobService.getJobsAppliedOrSaved(user.getId(), -1));
        model.addAttribute("jobSave", this.jobService.getJobsAppliedOrSaved(user.getId(), 1));

        return "jobApplied";
    }

}
