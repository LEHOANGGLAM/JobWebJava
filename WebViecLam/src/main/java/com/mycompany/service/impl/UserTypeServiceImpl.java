/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.service.impl;

import com.mycompany.pojo.BusinessType;
import com.mycompany.pojo.UserType;
import com.mycompany.service.UserTypeService;
import com.mycompany.repository.UserTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */
@Service
public class UserTypeServiceImpl implements UserTypeService{
    
    @Autowired
    private UserTypeRepository userTypeRepository;

    @Override
    public UserType getUserTypeById(int id) {
        return this.userTypeRepository.getUserTypeById(id);
    }

    @Override
    public BusinessType getBusinessTypeById(int id) {
        return this.userTypeRepository.getBusinessTypeById(id);
    }
    
}
