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
import com.mycompany.service.JobTypeService;
import com.mycompany.service.LocationService;
import com.mycompany.service.UserService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
public class EmployerController {

    @Autowired
    private JobService jobService;
    @Autowired
    private CompanyService companyService;
    @Autowired
    private LocationService locationService;
    @Autowired
    private JobTypeService jobTypeService;
    @Autowired
    private AppliService appliService;
    @Autowired
    private UserService userService;

    @RequestMapping("/postJob")
    public String postJob(Model model, HttpSession session) {
        UserAccount user = (UserAccount) session.getAttribute("currentUser");
        model.addAttribute("loca", this.locationService.getLocaByComId(this.companyService.getCompanyByUserId(user.getId()).getId()));
        model.addAttribute("jobType", this.jobTypeService.getJobTypes());

        return "postJob";
    }

    @PostMapping("/postJob")
    public void addApplication(
            @ModelAttribute(value = "j") JobPost j,
            HttpSession session,
            Model model) {
        UserAccount user = (UserAccount) session.getAttribute("currentUser");

        if (j.getId() == null) {
            try {
                SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
                Date d = f.parse(j.getDateString());
                j.setExpirationDate(d);
            } catch (ParseException ex) {
                Logger.getLogger(EmployerController.class.getName()).log(Level.SEVERE, null, ex);
            }

            j.setJobTypeId(this.jobTypeService.getJobTypeById(j.getTypeId()));
            j.setJobStreetId(this.locationService.getStreetById(j.getStreetId()));
            j.setCreatedDate(new Date());
            j.setCompanyId(this.companyService.getCompanyByUserId(user.getId()));
            j.setIsActive(1);
            this.jobService.addJobPost(j);
        } else {
            //  System.out.println(j.getJobTitle());
            JobPost jobCurrent = this.jobService.getJobById(j.getId());
            jobCurrent.setJobTitle(j.getJobTitle());
            jobCurrent.setJobNature(j.getJobNature());
            jobCurrent.setVacancy(j.getVacancy());
            jobCurrent.setYearExperRequire(j.getYearExperRequire());
            jobCurrent.setJobDescription(j.getJobDescription());
            jobCurrent.setJobRequirement(j.getJobRequirement());
            jobCurrent.setIndividualRight(j.getIndividualRight());
            jobCurrent.setJobMinSalary(j.getJobMinSalary());
            jobCurrent.setJobMaxSalary(j.getJobMaxSalary());

            System.out.println(j.getTypeId());
            jobCurrent.setJobTypeId(this.jobTypeService.getJobTypeById(j.getTypeId()));
            jobCurrent.setJobStreetId(this.locationService.getStreetById(j.getStreetId()));

            try {
                SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
                Date d = f.parse(j.getDateString());
                jobCurrent.setExpirationDate(d);
            } catch (ParseException ex) {
                Logger.getLogger(EmployerController.class.getName()).log(Level.SEVERE, null, ex);
            }

            this.jobService.updateJobPost(jobCurrent);
        }

        model.addAttribute("errMsg", "Action Sucessful");

    }

    @RequestMapping("/postJob/{jId}")
    public String EditJob(
            @ModelAttribute(value = "j") JobPost j,
            @PathVariable(value = "jId") int jId,
            HttpSession session,
            Model model) {
        UserAccount user = (UserAccount) session.getAttribute("currentUser");
        model.addAttribute("loca", this.locationService.getLocaByComId(this.companyService.getCompanyByUserId(user.getId()).getId()));
        model.addAttribute("jobType", this.jobTypeService.getJobTypes());

        model.addAttribute("job", this.jobService.getJobById(jId));

        model.addAttribute("tagLoca", this.jobService.getJobById(jId).getJobStreetId().getId());
        model.addAttribute("tagJobType", this.jobService.getJobById(jId).getJobTypeId().getId());
        return "postJob";
    }

    @GetMapping("/jobPostManager")
    public String jobPostManager(Model model, HttpSession session) {

        return "jobPostManager";
    }

    @RequestMapping("/candidateList/{jId}")
    public String candidateListByJobPost(
            @PathVariable(value = "jId") int jId,
            HttpSession session,
            Model model) {
        
        JobPost j = this.jobService.getJobById(jId);
        model.addAttribute("u", this.userService.getUserAppliedByJobPostId(jId));

        model.addAttribute("j", j);
        return "_candidateList";
    }

    @GetMapping("/candidateList")
    public String candidateList(
            HttpSession session,
            Model model) {

        model.addAttribute("u", this.userService.getUsers());

        return "candidateList";
    }
}
