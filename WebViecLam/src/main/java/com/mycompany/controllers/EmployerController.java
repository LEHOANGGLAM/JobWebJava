/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobPostActivityPK;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.CompanyService;
import com.mycompany.service.JobService;
import com.mycompany.service.LocationService;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @RequestMapping("/postJob")
    public String postJob(Model model, HttpSession session) {
        UserAccount user = (UserAccount) session.getAttribute("currentUser");
        model.addAttribute("loca", this.locationService.getLocaByComId(this.companyService.getCompanyByUserId(user.getId()).getId()));

        return "postJob";
    }

    @PostMapping("/postJob")
    public String addApplication(
            @ModelAttribute(value = "j") JobPost j,
            HttpSession session,
         
            Model model) {
        UserAccount user = (UserAccount) session.getAttribute("currentUser");
        
   
       // j.setJobStreetId(this.locationService.getStreetById(jobStreetId));
        

       
        j.setJobStreetId(this.locationService.getStreetById(j.getStreetId()));
        j.setCreatedDate(new Date());
        j.setCompanyId(this.companyService.getCompanyByUserId(user.getId()));
        j.setIsActive(1);
        this.jobService.addOrUpdateJobPost(j);
        return "postJob";
    }

}
