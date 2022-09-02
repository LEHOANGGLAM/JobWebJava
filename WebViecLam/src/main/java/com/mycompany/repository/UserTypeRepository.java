/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;


import com.mycompany.pojo.BusinessType;
import com.mycompany.pojo.UserType;


/**
 *
 * @author dell
 */
public interface UserTypeRepository {

    UserType getUserTypeById(int id);
    BusinessType getBusinessTypeById(int id);
}
