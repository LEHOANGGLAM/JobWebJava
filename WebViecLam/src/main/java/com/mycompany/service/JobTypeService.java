/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service;

import com.mycompany.pojo.JobType;
import java.util.List;

/**
 *
 * @author dell
 */
public interface JobTypeService {
      List<JobType> getJobTypes();
      public JobType getJobTypeById(int jobTypeId);
}
