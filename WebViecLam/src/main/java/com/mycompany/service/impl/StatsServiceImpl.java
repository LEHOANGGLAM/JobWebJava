/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.repository.StatsRepository;
import com.mycompany.service.StatsService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author dell
 */
@Service
public class StatsServiceImpl implements StatsService{

    
    @Autowired
    private StatsRepository statsRepository;
    
    @Override
    public  List<Object[]> applicationStats(int quarter,int year){
        return this.statsRepository.applicationStats( quarter, year);
    }
    
  
}
