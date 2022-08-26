/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobPostActivityPK;
import com.mycompany.repository.AppliRepository;
import com.mycompany.service.AppliService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author dell
 */
@Service
public class AppliServiceImpl implements AppliService {

    @Autowired
    private AppliRepository appliRepository;

    @Override
    public boolean addAppli(JobPostActivity appli) {
        return this.appliRepository.addAppli(appli);
    }
    
    @Override
    public boolean addAppliPK(JobPostActivityPK appli) {
        return this.appliRepository.addAppliPK(appli);
    }
}
