/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.Location;
import com.mycompany.pojo.Street;
import java.util.List;

/**
 *
 * @author dell
 */
public interface LocationRepository {

    List<Location> getJobLocations();

    Location getLocationByJobPostId(int id);
    List<Location> getLocaByComId(int id);
    int countLocaByComId(int id);
}
