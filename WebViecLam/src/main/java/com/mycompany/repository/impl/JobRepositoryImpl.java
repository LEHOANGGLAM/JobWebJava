/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.Location;
import com.mycompany.pojo.Street;
import com.mycompany.pojo.UserAccount;
import com.mycompany.repository.JobReposiroty;
import com.mycompany.service.LocationService;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.NoResultException;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import javax.persistence.Query;
import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author dell
 */
@Repository
@PropertySource("classpath:messages.properties")
@Transactional
public class JobRepositoryImpl implements JobReposiroty {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Environment env;
    @Autowired
    private LocationService jobLocaService;

    @Override
    public List<JobPost> getJobs(Map<String, String> params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<JobPost> q = b.createQuery(JobPost.class);

        Root<JobPost> jRoot = q.from(JobPost.class);
        Root<Street> sRoot = q.from(Street.class);
        Root<Company> cRoot = q.from(Company.class);

        q.where(b.equal(jRoot.get("jobStreetId"), sRoot.get("id")),
                b.equal(jRoot.get("companyId"), cRoot.get("id")));
        q = q.select(
                jRoot
        );
        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            String kw = params.get("kw");
            if (kw != null && !kw.isEmpty()) {
                Predicate p = b.like(jRoot.get("jobTitle").as(String.class), String.format("%%%s%%", kw));
                predicates.add(p);
            }

            String jobTypeId = params.get("jobTypeId");
            if (jobTypeId != null && !jobTypeId.isEmpty()) {
                Predicate p = b.equal(jRoot.get("jobTypeId"), Integer.parseInt(jobTypeId));
                predicates.add(p);
            }

//            String jobLocationId = params.get("cityId");
//            if (jobLocationId != null && !jobLocationId.isEmpty()) {
//                Predicate p = b.equal(sRoot.get("cityId"), this.jobLocaService.getCityById(Integer.parseInt(jobLocationId)));
//                predicates.add(p);
//
//            }
            q.where(predicates.toArray(Predicate[]::new));
        }

        q.groupBy(jRoot.get("id"));
        q.orderBy(b.desc(jRoot.get("id")));

        Query query = session.createQuery(q);

        if (page > 0) {
            int size = Integer.parseInt(env.getProperty("page.size").toString());
            int start = (page - 1) * size;
            query.setFirstResult(start);
            query.setMaxResults(size);
        }

        List<JobPost> kq = query.getResultList();

//        kq.forEach(k -> {
//            System.out.printf("%s - name, %s - city\n ", k[7], k[6]);
//        });
        return kq;

    }

    @Override
    public List<JobPost> getJobsByComid(int comId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<JobPost> q = b.createQuery(JobPost.class);

        Root<JobPost> jRoot = q.from(JobPost.class);

        q.where(
                b.equal(jRoot.get("companyId"), comId));
        q = q.select(
                jRoot
        );
        q.groupBy(jRoot.get("id"));
        q.orderBy(b.desc(jRoot.get("id")));

        Query query = session.createQuery(q);

        List<JobPost> kq = query.getResultList();

//        kq.forEach(k -> {
//            System.out.printf("%s - name, %s - city\n ", k[7], k[6]);
//        });
        return kq;

    }

    @Override
    public int countJobPosts() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT Count(*) FROM JobPost");
        return Integer.parseInt(q.getSingleResult().toString());
    }

    @Override
    public JobPost getJobById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(JobPost.class, id);
    }

    @Override
    public List<JobPost> getJobsAppliedOrSaved(int uId, int isSave) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<JobPost> q = b.createQuery(JobPost.class);

        Root<JobPostActivity> appliRoot = q.from(JobPostActivity.class);

        q.where(
                b.equal(appliRoot.get("userAccount"), uId),
                b.equal(appliRoot.get("isSave"), isSave)
        );

        q = q.select(appliRoot.get("jobPost"));

        Query query = session.createQuery(q);

        try {
            List<JobPost> kq = query.getResultList();
//            kq.forEach(k -> {
//                System.out.printf("%s - name, \n ", k.getJobTitle());
//            });
            return kq;
        } catch (NoResultException nre) {
            return null;
        }

    }

    @Override
    public boolean addJobPost(JobPost j) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(j);
            return true;
        } catch (HibernateException e) {
            System.err.println(e.getMessage());
        }
        return false;
    }

    @Override
    public boolean updateJobPost(JobPost j) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.update(j);
            return true;
        } catch (HibernateException e) {
            System.err.println(e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteJobPost(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {
            JobPost p = session.get(JobPost.class, id);
            session.delete(p);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }

    }

    @Override
    public List<Object[]> getJobsByComIdAndCountApplied(int comId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root<JobPostActivity> jARoot = q.from(JobPostActivity.class);
        Root<JobPost> jRoot = q.from(JobPost.class);

        q.where(b.equal(jARoot.get("jobPost"), jRoot.get("id")),
                b.equal(jRoot.get("companyId"), comId),
                b.equal(jARoot.get("isSave"), -1));
        q.multiselect(jRoot, b.count(jARoot.get("jobPost")));
        q.groupBy(jRoot.get("id"));
        Query query = session.createQuery(q);

        List<Object[]> kq = query.getResultList();

//        kq.forEach(k -> {
//            System.out.printf("%d - id ,%d - number\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", k[0], k[1]);
//        });
        return kq;
    }

}
