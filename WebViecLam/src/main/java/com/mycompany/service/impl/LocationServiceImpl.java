/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.Location;
import com.mycompany.pojo.JobType;
import com.mycompany.pojo.Street;
import com.mycompany.repository.JobTypeRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mycompany.repository.LocationRepository;
import com.mycompany.service.LocationService;

/**
 *
 * @author dell
 */
@Service
public class LocationServiceImpl implements LocationService {

    @Autowired
    private LocationRepository jobLocaRepository;

    @Override
    public  List<Location> getCities()  {
        return this.jobLocaRepository.getCities();
    }

    @Override
    public List<Street> getLocaByComId(int id) {
        return this.jobLocaRepository.getLocaByComId(id);
    }
    
    @Override
     public int countLocaByComId(int id){
            return this.jobLocaRepository.countLocaByComId(id);
     }
}
