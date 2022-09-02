/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.BusinessType;
import com.mycompany.pojo.Comment;
import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.Location;
import com.mycompany.pojo.Street;
import com.mycompany.pojo.UserAccount;
import com.mycompany.repository.CompanyRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
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
@Transactional
@PropertySource("classpath:messages.properties")
public class CompanyRepositoryImpl implements CompanyRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Environment env;

    @Override
    public Company getCompanyByJobPostId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Company> q = b.createQuery(Company.class);

        Root<JobPost> jRoot = q.from(JobPost.class);
        Root<Company> cRoot = q.from(Company.class);

        q.select(cRoot).where(b.equal(jRoot.get("companyId"), cRoot.get("id")),
                b.equal(jRoot.get("id"), id));
        Query query = session.createQuery(q);
        List<Company> cList = query.getResultList();
        Company c = cList.get(0);
        return c;
    }

    @Override
    public Company getCompanyByUserId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Company> q = b.createQuery(Company.class);

        Root<UserAccount> uRoot = q.from(UserAccount.class);
        Root<Company> cRoot = q.from(Company.class);

        q.select(cRoot).where(b.equal(uRoot.get("id"), cRoot.get("userAccountId")),
                b.equal(uRoot.get("id"), id));
        Query query = session.createQuery(q);
        List<Company> cList = query.getResultList();
        Company c = cList.get(0);
        return c;
    }

    @Override
    public List<Object[]> getCompanies() {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root<UserAccount> aRoot = q.from(UserAccount.class);
        Root<Company> cRoot = q.from(Company.class);

        q.multiselect(cRoot.get("id"),
                cRoot.get("companyName"),
                aRoot.get("isComfirm"),
                aRoot.get("registrationDate"),
                cRoot.get("companyWebsite"),
                aRoot.get("id")
        ).where(b.equal(aRoot.get("id"), cRoot.get("userAccountId")));

        Query query = session.createQuery(q);
        List<Object[]> cList = query.getResultList();

        return cList;
    }

    @Override
    public boolean deleteCompany(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {
            Company p = session.get(Company.class, id);
            session.delete(p);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean addOrUpdateCompany(Company com) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {

            session.save(com);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }

    }

    @Override
    public List<Company> getCompanyList(Map<String, String> params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Company> q = b.createQuery(Company.class);

        Root<Company> cRoot = q.from(Company.class);

        q.select(cRoot);
        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            String kw = params.get("kw");
            if (kw != null && !kw.isEmpty()) {
                Predicate p = b.like(cRoot.get("companyName").as(String.class), String.format("%%%s%%", kw));
                predicates.add(p);
            }
            String businessTypeId = params.get("businessTypeId");
            if (businessTypeId != null && !businessTypeId.isEmpty()) {
                Predicate p = b.equal(cRoot.get("businessTypeId"), Integer.parseInt(businessTypeId));
                predicates.add(p);
            }
            q.where(predicates.toArray(Predicate[]::new));
        }
        Query query = session.createQuery(q);

        if (page > 0) {
            int size = Integer.parseInt(env.getProperty("page.size").toString());
            int start = (page - 1) * size;
            query.setFirstResult(start);
            query.setMaxResults(size);
        }

        List<Company> cList = query.getResultList();

        return cList;
    }

    @Override
    public int countCompanies() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT Count(*) FROM Company");
        return Integer.parseInt(q.getSingleResult().toString());
    }

    @Override
    public Company getComById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(Company.class, id);
    }

    @Override
    public List<Comment> getComments(int Id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Comment> q = b.createQuery(Comment.class);
        Root root = q.from(Comment.class);
        q.select(root);
        q.where(b.equal(root.get("companyId"), Id));

        org.hibernate.query.Query query = session.createQuery(q);
        return query.getResultList();
    }

    @Override
    public List<BusinessType> getBusinesstype() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From BusinessType");

        return q.getResultList();
    }

    @Override
    public boolean addComment(Comment com) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {

            session.save(com);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
