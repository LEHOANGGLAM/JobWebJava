/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobPostActivityPK;
import com.mycompany.repository.AppliRepository;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author dell
 */
@Repository
@Transactional
public class AppliRepositoryImpl implements AppliRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addAppli(JobPostActivity appli) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(appli);
            return true;
        } catch (HibernateException e) {
            System.err.println("add Application-------------" + e.getMessage());
        }
        return false;

    }

    @Override
    public boolean addAppliPK(JobPostActivityPK appli) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(appli);
            return true;
        } catch (HibernateException e) {
            System.err.println("add ApplicationPK-------------" + e.getMessage());
        }
        return false;
    }
}
