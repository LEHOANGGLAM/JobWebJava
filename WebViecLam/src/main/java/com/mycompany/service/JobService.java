/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service;

import com.mycompany.pojo.JobPost;
import java.util.List;
import java.util.Map;

/**
 *
 * @author dell
 */
public interface JobService {

    List<Object[]> getJobs(Map<String, String> params, int page);

    int countJobPosts();

    JobPost getJobById(int id);
    List<Object[]> getJobsByComid(int comId,int page);
}
