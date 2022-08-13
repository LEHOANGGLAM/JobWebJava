/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobLocation;
import com.mycompany.pojo.JobPost;
import com.mycompany.repository.JobLocaRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
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
public class JobLocaRepositoryImpl implements JobLocaRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<JobLocation> getJobLocations() {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<JobLocation> q = b.createQuery(JobLocation.class);
        Root root = q.from(JobLocation.class);
        q.select(root);
        Query query = session.createQuery(q);

        return query.getResultList();
    }

    @Override
    public JobLocation getLocationByJobPostId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<JobLocation> q = b.createQuery(JobLocation.class);

        Root<JobPost> jRoot = q.from(JobPost.class);
        Root<JobLocation> jLocaRoot = q.from(JobLocation.class);

        q.select(jLocaRoot).where(b.equal(jRoot.get("jobLocationId"), jLocaRoot.get("id")),
                b.equal(jRoot.get("id"), id));
        Query query = session.createQuery(q);
        List<JobLocation> jLocaList = query.getResultList();
        JobLocation j = jLocaList.get(0);
        return j;
        //return null;
    }
}
