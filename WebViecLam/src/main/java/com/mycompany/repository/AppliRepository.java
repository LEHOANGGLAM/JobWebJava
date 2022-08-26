/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobPostActivityPK;

/**
 *
 * @author dell
 */
public interface AppliRepository {

    boolean addAppli(JobPostActivity appli);

    boolean addAppliPK(JobPostActivityPK appli);
}
