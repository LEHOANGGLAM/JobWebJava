/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobType;
import com.mycompany.pojo.UserAccount;
import com.mycompany.repository.StatsRepository;
import java.util.Date;
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
public class StatsRepositoryImpl implements StatsRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> applicationStats(int quarter, int year) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root<JobPostActivity> jARoot = q.from(JobPostActivity.class);
        Root<JobPost> jRoot = q.from(JobPost.class);

        if (quarter == 0) {
            q.multiselect(jRoot.get("jobTypeId"), b.count(jARoot.get("jobPost"))).where(b.equal(jARoot.get("jobPost"), jRoot.get("id")),
                    b.equal(b.function("YEAR", Integer.class, jARoot.get("applyDate")), year),
                    b.equal(jARoot.get("isSave"), -1));

        } else {
            q.multiselect(jRoot.get("jobTypeId"), b.count(jARoot.get("jobPost"))).where(b.equal(jARoot.get("jobPost"), jRoot.get("id")),
                    b.equal(b.function("QUARTER", Integer.class, jARoot.get("applyDate")), quarter),
                    b.equal(b.function("YEAR", Integer.class, jARoot.get("applyDate")), year),
                    b.equal(jARoot.get("isSave"), -1));
        }

        q.groupBy(jRoot.get("jobTypeId"));

        Query query = session.createQuery(q);
        List<Object[]> cList = query.getResultList();
        return cList;
    }

}
