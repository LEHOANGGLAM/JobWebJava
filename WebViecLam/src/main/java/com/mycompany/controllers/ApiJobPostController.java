/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.AppliService;
import com.mycompany.service.CompanyService;
import com.mycompany.service.JobService;
import com.mycompany.service.JobTypeService;
import com.mycompany.service.LocationService;
import com.mycompany.service.UserService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author dell
 */
@RestController
@RequestMapping("/api")
public class ApiJobPostController {

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

    @GetMapping("/applied")
    public ResponseEntity<List<Object[]>> getApplied(HttpSession session) {

        UserAccount user = (UserAccount) session.getAttribute("currentUser");
        int comId = this.companyService.getCompanyByUserId(user.getId()).getId();

        return new ResponseEntity<>(this.jobService.getJobsByComIdAndCountApplied(comId), HttpStatus.OK);
    }

    @GetMapping("/jobposts")
    public ResponseEntity<List<JobPost>> getJobPosts(HttpSession session) {
        UserAccount user = (UserAccount) session.getAttribute("currentUser");
        int comId = this.companyService.getCompanyByUserId(user.getId()).getId();

        return new ResponseEntity<>(this.jobService.getJobsByComid(comId), HttpStatus.OK);
    }

    @DeleteMapping("/jobposts/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteJob(Model model, @PathVariable(value = "id") int id) {

        this.jobService.deleteJobPost(id);

    }

}
