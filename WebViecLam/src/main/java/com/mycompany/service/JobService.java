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

    List<JobPost> getJobs(Map<String, String> params, int page);

    int countJobPosts();

    JobPost getJobById(int id);

    List<JobPost> getJobsByComid(int comId);

    List<JobPost> getJobsAppliedOrSaved(int uId, int isSave);

    boolean addJobPost(JobPost j);

    boolean updateJobPost(JobPost j);

    boolean deleteJobPost(int id);
}
