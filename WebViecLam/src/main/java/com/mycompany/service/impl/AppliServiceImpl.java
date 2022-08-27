/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobPostActivityPK;
import com.mycompany.repository.AppliRepository;
import com.mycompany.service.AppliService;
import java.util.List;
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
    public boolean updAppli(JobPostActivity appli) {
        return this.appliRepository.updAppli(appli);
    }

    @Override
    public List<JobPostActivity> getAppliByUserId(int id) {
          return this.appliRepository.getAppliByUserId(id);
    }

    @Override
    public JobPostActivity isApplied(int uId, int jId) {
         return this.appliRepository.isApplied(uId, jId);
    }

    @Override
    public boolean updateIsSave(JobPostActivity appli) {
        return this.appliRepository.updateIsSave(appli);
    }
}
