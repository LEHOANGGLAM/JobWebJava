/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service;

import com.mycompany.pojo.Location;
import com.mycompany.pojo.Street;
import java.util.List;

/**
 *
 * @author dell
 */
public interface LocationService {
     List<Location> getJobLocations();
     Location getLocationByJobPostId(int id);
     List<Street> getLocaByComId(int id);
      int countLocaByComId(int id);
}
