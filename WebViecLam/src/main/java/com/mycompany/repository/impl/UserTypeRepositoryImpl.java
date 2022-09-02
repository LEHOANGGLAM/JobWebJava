/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.BusinessType;
import com.mycompany.pojo.UserType;
import com.mycompany.repository.UserTypeRepository;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author PC
 */
@Repository
@Transactional
public class UserTypeRepositoryImpl implements UserTypeRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public UserType getUserTypeById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(UserType.class, id);
    }

    @Override
    public BusinessType getBusinessTypeById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(BusinessType.class, id);
    }

}
