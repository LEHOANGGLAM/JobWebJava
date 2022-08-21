/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.UserAccount;
import com.mycompany.repository.CompanyRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
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
    public Company getComById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(Company.class, id);
    }
}
