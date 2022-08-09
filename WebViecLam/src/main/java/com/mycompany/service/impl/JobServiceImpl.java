/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.JobPost;
import com.mycompany.repository.JobReposiroty;
import com.mycompany.service.JobService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author dell
 */
@Service
public class JobServiceImpl implements JobService {

    @Autowired
    private JobReposiroty jobReposiroty;

    @Override
    public List<Object[]> getJobs(Map<String, String> params, int page){
        return this.jobReposiroty.getJobs(params, page); //, page
    }

    @Override
    public int countJobPosts() {
        return this.jobReposiroty.countJobPosts();
    }
}
