/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.UserAccount;
import java.util.List;
import java.util.Map;

/**
 *
 * @author dell
 */
public interface JobReposiroty {

    List<JobPost> getJobs(Map<String, String> params, int page);

    int countJobPosts();

    JobPost getJobById(int id);

    // int countJobPosts();
    List<JobPost> getJobsByComid(int comId);

    List<JobPost> getJobsAppliedOrSaved(int uId, int isSave);

    boolean addJobPost(JobPost j);

    boolean updateJobPost(JobPost j);

    boolean deleteJobPost(int id);

    List<Object[]> getJobsByComIdAndCountApplied(int comId);

 
}
