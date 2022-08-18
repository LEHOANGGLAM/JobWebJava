/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.Company;
import java.util.List;

/**
 *
 * @author dell
 */
public interface CompanyRepository {
    Company getCompanyByJobPostId(int id);
    List<Object[]> getCompanies();
    boolean deleteCompany(int id);
     boolean addOrUpdateCompany(Company com);
}
