/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobPostActivityPK;
import java.util.List;

/**
 *
 * @author dell
 */
public interface AppliRepository {

    boolean addAppli(JobPostActivity appli);

   boolean updAppli(JobPostActivity appli);

    List<JobPostActivity> getAppliByUserId(int id);

    JobPostActivity isApplied(int uId, int jId);

    boolean updateIsSave(JobPostActivity appli);
}
