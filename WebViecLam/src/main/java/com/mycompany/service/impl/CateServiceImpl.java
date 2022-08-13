/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.Category;
import com.mycompany.repository.CateRepository;
import com.mycompany.repository.CompanyRepository;
import com.mycompany.service.CateService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author dell
 */
@Service
public class CateServiceImpl implements CateService {

    @Autowired
    private CateRepository cateRepository;

    @Override
    public List<Category> getCateList() {
        return this.cateRepository.getCateList();
    }

    @Override
    public Category getCateByLink(String link) {
          return this.cateRepository.getCateByLink(link);
    }

}
