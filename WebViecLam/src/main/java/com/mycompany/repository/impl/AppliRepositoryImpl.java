/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobPostActivityPK;
import com.mycompany.pojo.Location;
import com.mycompany.pojo.UserAccount;
import com.mycompany.repository.AppliRepository;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
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
    public boolean updAppli(JobPostActivity appli) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.update(appli);
            return true;
        } catch (HibernateException e) {
            System.err.println("update Application-------------" + e.getMessage());
        }
        return false;

    }

    @Override
    public boolean updateIsSave(JobPostActivity appli) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            if (appli.getIsSave() == 1) {
                appli.setIsSave(0);
            } else if (appli.getIsSave() == 0 || appli.getIsSave() == null) {
                appli.setIsSave(1);
            }
            session.save(appli);
            return true;
        } catch (HibernateException e) {
            System.err.println("UPDate ISave-------------" + e.getMessage());
        }
        return false;
    }

    @Override
    public List<JobPostActivity> getAppliByUserId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<JobPostActivity> q = b.createQuery(JobPostActivity.class);

        Root<JobPostActivity> jRoot = q.from(JobPostActivity.class);

        q.where(b.equal(jRoot.get("userAccount"), id));
        q.select(jRoot);

        Query query = session.createQuery(q);

        List<JobPostActivity> kq = query.getResultList();

//        kq.forEach(k -> {
//            System.out.printf("%s - name\n ", k.getJobPost());
//        });
        return kq;
    }

    @Override
    public JobPostActivity isApplied(int uId, int jId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<JobPostActivity> q = b.createQuery(JobPostActivity.class);

        Root<JobPostActivity> jRoot = q.from(JobPostActivity.class);

        q.where(b.equal(jRoot.get("userAccount"), uId),
                b.equal(jRoot.get("jobPost"), jId)
        );
        q.select(jRoot);

        Query query = session.createQuery(q);
        try {
            JobPostActivity jobPostActivity = (JobPostActivity) query.getSingleResult();
            return jobPostActivity;
        } catch (NoResultException nre) {
            return null;
        }

    }

    @Override
    public List<Object[]> CountAppliedByComId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
       
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root<JobPostActivity> jARoot = q.from(JobPostActivity.class);
        Root<JobPost> jRoot = q.from(JobPost.class);
        
        q.where(b.equal(jARoot.get("jobPost"), jRoot.get("id")),
                b.equal(jRoot.get("companyId"), id),
                b.equal(jARoot.get("isSave"),-1));
        q.multiselect(jARoot.get("jobPost"),b.count(jARoot.get("jobPost")));
        q.groupBy(jARoot.get("jobPost"));
        Query query = session.createQuery(q);

        List<Object[]> kq = query.getResultList();

//        kq.forEach(k -> {
//            System.out.printf("%d - id ,%d - number\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", k[0], k[1]);
//        });
        return kq;
    }
}
