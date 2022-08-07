/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Employer;
import com.mycompany.pojo.JobLocation;
import com.mycompany.pojo.JobPost;
import com.mycompany.repository.JobReposiroty;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import javax.persistence.Query;
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

    @Override
    public List<Object[]> getJobs(Map<String, String> params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root<JobPost> jRoot = q.from(JobPost.class);
        Root<JobLocation> jLocaRoot = q.from(JobLocation.class);
        Root<Employer> eRoot = q.from(Employer.class);

        q.where(b.and(b.equal(jRoot.get("jobLocationId"), jLocaRoot.get("id")),
                    b.equal(jRoot.get("employerId"), eRoot.get("id"))));
       
        
        q = q.multiselect(
                jRoot.get("jobTitle"),
                jRoot.get("jobMinSalary"),
                jRoot.get("jobMaxSalary"),
                jRoot.get("yearExperRequire"),
                jRoot.get("createdDate"),
                jRoot.get("jobStreet"),
                jLocaRoot.get("city"),
                eRoot.get("companyName"),
                jRoot.get("expirationDate")
        );
        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            String kw = params.get("kw");
            if (kw != null && !kw.isEmpty()) {
                Predicate p = b.like(jRoot.get("jobTitle").as(String.class), String.format("%%%s%%", kw));
                predicates.add(p);
            }
            q.where(predicates.toArray(Predicate[]::new));
        }

        Query createQuery = session.createQuery(q);
        
         if (page > 0) {
            int size = Integer.parseInt(env.getProperty("page.size").toString());
            int start = (page - 1) * size;
            createQuery.setFirstResult(start);
            createQuery.setMaxResults(size);
        }
         q.orderBy(b.desc(jRoot.get("id")));
        List<Object[]> kq = createQuery.getResultList();

//        kq.forEach(k -> {
//            System.out.printf("%s - city, %s - Title\n ", k[0], k[1]);
//        });

        return kq;

    }

    @Override
    public int countJobPosts() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT Count(*) FROM JobPost");

        return Integer.parseInt(q.getSingleResult().toString());
    }
}

//        if (params != null) {
//            List<Predicate> predicates = new ArrayList<>();
//            String kw = params.get("kw");
//            if (kw != null && !kw.isEmpty()) {
//                Predicate p = b.like(root.get("id").as(String.class), String.format("%%%s%%", kw));
//                predicates.add(p);
//            }
//
////            String fp = params.get("fromPrice");
////            if (fp != null) {
////                Predicate p = b.greaterThanOrEqualTo(root.get("price").as(Long.class), Long.parseLong(fp));
////                predicates.add(p);
////            }
////
////            String tp = params.get("toPrice");
////            if (tp != null) {
////                Predicate p = b.lessThanOrEqualTo(root.get("price").as(Long.class), Long.parseLong(tp));
////                predicates.add(p);
////            }
////
////            String cateId = params.get("cateId");
////            if (cateId != null) {
////                Predicate p = b.equal(root.get("categoryId"), Integer.parseInt(cateId));
////                predicates.add(p);
////            }
//            q.where(predicates.toArray(Predicate[]::new));
//        }
//
//        Query query = session.createQuery(q);
//
//        if (page > 0) {
//            int size = Integer.parseInt(env.getProperty("page.size").toString());
//            int start = (page - 1) * size;
//            query.setFirstResult(start);
//            query.setMaxResults(size);
//        }
