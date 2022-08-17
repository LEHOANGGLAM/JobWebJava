/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.Category;
import com.mycompany.pojo.JobType;
import java.util.List;

/**
 *
 * @author dell
 */
public interface CateRepository {
     List<Category> getCateList();
     Category getCateByLink(String link);
      List<Category> getCateChild();
}
