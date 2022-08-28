/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.UserAccount;
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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
@PropertySource("classpath:messages.properties")
public class CompanyController {

    @Autowired
    private JobService jobService;
    @Autowired
    private CompanyService companyService;
    @Autowired
    private LocationService locationService;
    @Autowired
    private Environment env;

    @GetMapping("/companyDetail/{cId}")
    public String companyDetail(Model model, @PathVariable(value = "cId") int cId, @RequestParam Map<String, String> params) {

        model.addAttribute("c", this.companyService.getComById(cId));
        model.addAttribute("l", this.locationService.getLocaByComId(cId));

        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("jobposts", this.jobService.getJobsByComid(cId, page));
        model.addAttribute("comment", this.companyService.getComments(cId));
        return "companyDetail";
    }

    @RequestMapping("/companyList")
    public String companyList(Model model, @RequestParam Map<String, String> params, HttpServletRequest hsr, HttpSession session) {

        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("com", this.companyService.getCompanyList(params, 1));
        model.addAttribute("comCounter", this.companyService.countCompanies());
        model.addAttribute("pageSize", Integer.parseInt(env.getProperty("page.size")));

        model.addAttribute("getBusinessType", this.companyService.getBusinesstype());
        String typeId = params.getOrDefault("businessTypeId", "");

        model.addAttribute("tagPage", page);
        model.addAttribute("tagCate", typeId);

        return "companyList";
    }
}
