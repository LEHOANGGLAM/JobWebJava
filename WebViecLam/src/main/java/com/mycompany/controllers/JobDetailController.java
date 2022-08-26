/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobPostActivityPK;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.AppliService;
import com.mycompany.service.CompanyService;
import com.mycompany.service.JobService;
import java.util.Map;
import javax.swing.JFrame;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.mycompany.service.LocationService;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

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
    private LocationService jobLocaService;
    @Autowired
    private AppliService appliService;

    private JFrame outFrame = new JFrame("demo");

    @GetMapping("/jobDetail/{jId}")
    public String jobDetail(Model model, @PathVariable(value = "jId") int jId, @RequestParam Map<String, String> params,
            HttpSession session) {
        model.addAttribute("job", this.jobService.getJobById(jId));
        model.addAttribute("c", this.companyService.getCompanyByJobPostId(jId));
        model.addAttribute("l", this.jobLocaService.getLocationByJobPostId(jId));

        //view jobpost below
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("jobposts", this.jobService.getJobs(params, page));

        model.addAttribute("a", new JobPostActivity());

        //Xét job này đã apply chưa
        UserAccount user = (UserAccount) session.getAttribute("currentUser");
        model.addAttribute("jobApplied", this.appliService.isApplied(user.getId(), jId));

        return "jobDetail";
    }

    @PostMapping("/jobDetail/{jId}")
    public String addApplication(
            @PathVariable(value = "jId") int jId,
            @ModelAttribute(value = "a") JobPostActivity a,
            HttpSession session,
            Model model) {

        UserAccount user = (UserAccount) session.getAttribute("currentUser");

        JobPostActivityPK activityPK = new JobPostActivityPK();
        activityPK.setJobPostId(this.jobService.getJobById(jId).getId());
        activityPK.setUserAccountId(user.getId());

        a.setApplyDate(new Date());
        a.setJobPostActivityPK(activityPK);
        a.setIsSave(0);
        a.setJobPost(this.jobService.getJobById(jId));

        String errMsg;
        if (this.appliService.addAppli(a) == true) {
            errMsg = "Successful Aplly";
        } else {
            errMsg = "Error";
        }
        model.addAttribute("err", errMsg);
        return "index";
    }
}
