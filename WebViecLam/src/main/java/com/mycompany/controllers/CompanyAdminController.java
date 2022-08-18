/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.UserAccount;
import com.mycompany.service.CateService;
import com.mycompany.service.CompanyService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
@RequestMapping("/admin")
public class CompanyAdminController {

    @Autowired
    private CompanyService companyService;

    @GetMapping("/company")
    public String index(Model model) {

        model.addAttribute("c", this.companyService.getCompanies());

        return "company";
    }

    @PutMapping("/company")
    @ResponseStatus(HttpStatus.OK)
    public void update(@RequestBody Company params, HttpSession session) {

        UserAccount userAccountId = params.getUserAccountId();
        if (userAccountId.getIsComfirm() == 1) {
            userAccountId.setIsComfirm(0);
        } else {
            userAccountId.setIsComfirm(1);
        }

        //session.setAttribute("c", ...............);

    }
}
