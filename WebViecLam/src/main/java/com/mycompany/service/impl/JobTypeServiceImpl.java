/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.JobType;
import com.mycompany.repository.JobTypeRepository;
import com.mycompany.service.JobTypeService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author dell
 */
@Service
public class JobTypeServiceImpl implements JobTypeService {

    @Autowired
    private JobTypeRepository jobTypeRepository;

    @Override
    public List<JobType> getJobTypes() {
        return this.jobTypeRepository.getJobTypes();
    }

    @Override
    public JobType getJobTypeById(int jobTypeId) {
        return this.jobTypeRepository.getJobTypeById(jobTypeId);
    }
}
