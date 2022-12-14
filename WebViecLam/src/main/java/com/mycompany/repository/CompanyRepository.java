/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.BusinessType;
import com.mycompany.pojo.Comment;
import com.mycompany.pojo.Company;
import java.util.List;
import java.util.Map;

/**
 *
 * @author dell
 */
public interface CompanyRepository {

    Company getCompanyByJobPostId(int id);

    List<Object[]> getCompanies();

    boolean deleteCompany(int id);

    boolean addOrUpdateCompany(Company com);

    Company getComById(int id);

    List<Comment> getComments(int companyId);
    
    boolean addComment(Comment com);

    List<Company> getCompanyList(Map<String, String> params, int page);

    int countCompanies();
     List<BusinessType> getBusinesstype();
     Company getCompanyByUserId(int id);
}
