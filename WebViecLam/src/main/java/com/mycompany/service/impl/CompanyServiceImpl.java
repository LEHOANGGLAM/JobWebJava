/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.Company;
import com.mycompany.repository.CompanyRepository;
import com.mycompany.repository.JobReposiroty;
import com.mycompany.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author dell
 */
@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyRepository companyRepository;

    @Override
    public Company getCompanyByJobPostId(int id) {
        return this.companyRepository.getCompanyByJobPostId(id);
    }

}
