/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.JobLocation;
import com.mycompany.pojo.JobType;
import com.mycompany.repository.JobLocaRepository;
import com.mycompany.repository.JobTypeRepository;
import com.mycompany.service.JobLocaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author dell
 */
@Service
public class JobLocaServiceImpl implements JobLocaService {

    @Autowired
    private JobLocaRepository jobLocaRepository;

    @Override
    public List<JobLocation> getJobLocations() {
        return this.jobLocaRepository.getJobLocations();
    }

    @Override
    public JobLocation getLocationByJobPostId(int id) {
        return this.jobLocaRepository.getLocationByJobPostId(id);
    }
}
