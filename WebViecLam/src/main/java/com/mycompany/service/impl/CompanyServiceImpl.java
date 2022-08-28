/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.BusinessType;
import com.mycompany.pojo.Comment;
import com.mycompany.pojo.Company;
import com.mycompany.repository.CompanyRepository;
import com.mycompany.repository.JobReposiroty;
import com.mycompany.service.CompanyService;
import java.util.List;
import java.util.Map;
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

    @Override
    public List<Object[]> getCompanies() {
        return this.companyRepository.getCompanies();
    }

    @Override
    public boolean deleteCompany(int id) {
        return this.companyRepository.deleteCompany(id);
    }

    @Override
    public boolean addOrUpdateCompany(Company com) {
        return this.companyRepository.addOrUpdateCompany(com);
    }

    @Override
    public Company getComById(int id) {
        return this.companyRepository.getComById(id);
    }

    @Override
    public List<Comment> getComments(int companyId) {
        return this.companyRepository.getComments(companyId);
    }

    @Override
    public List<Company> getCompanyList(Map<String, String> params, int page) {
        return this.companyRepository.getCompanyList(params, page);
    }

    @Override
    public int countCompanies() {
        return this.companyRepository.countCompanies();
    }

    @Override
    public List<BusinessType> getBusinesstype() {
        return this.companyRepository.getBusinesstype();
    }
}
