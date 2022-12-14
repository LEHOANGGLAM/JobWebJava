/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.UserAccount;
import com.mycompany.repository.UserRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author PC
 */
@Repository
@Transactional
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addUser(UserAccount user) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(user);
            return true;
        } catch (HibernateException e) {
            System.err.println(e.getMessage());
        }
        return false;
    }

    @Override
    public List<UserAccount> getUsers() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<UserAccount> q = b.createQuery(UserAccount.class);
        Root root = q.from(UserAccount.class);
        q.select(root).groupBy(root.get("id"));
        Query query = s.createQuery(q);
        return query.getResultList();
    }

    @Override
    public List<UserAccount> getUsersAdmin() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<UserAccount> q = b.createQuery(UserAccount.class);
        Root root = q.from(UserAccount.class);
        q.select(root).where(b.equal(root.get("userTypeId"), 1)).groupBy(root.get("id"));
        Query query = s.createQuery(q);
        return query.getResultList();
    }

    @Override
    public UserAccount getUserById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        return session.get(UserAccount.class, id);
    }

    @Override
    public UserAccount getUserByUsername(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<UserAccount> q = b.createQuery(UserAccount.class);
        Root root = q.from(UserAccount.class);
        q.select(root);

        if (!username.isEmpty()) {
            Predicate p = b.equal(root.get("username").as(String.class), username.trim());
            q = q.where(p);
        }

        Query query = session.createQuery(q);
        return (UserAccount) query.getSingleResult();
    }

    @Override
    public boolean deleteUser(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {
            UserAccount p = session.get(UserAccount.class, id);
            session.delete(p);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean updateConfirmUser(int id, int isComfirm) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        try {
            UserAccount p = session.get(UserAccount.class, id);
            p.setIsComfirm(isComfirm);
            session.save(p);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public UserAccount getInfo(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<UserAccount> q = b.createQuery(UserAccount.class);
        Root root = q.from(UserAccount.class);
        q.select(root);
        q.where(b.equal(root.get("id"), id));

        Query query = session.createQuery(q);
        return (UserAccount) query.getSingleResult();
    }

    @Override
    public boolean updateUser(UserAccount u) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.update(u);
            return true;
        } catch (HibernateException e) {
            System.err.println("update Application-------------" + e.getMessage());
        }
        return false;

    }

    @Override
    public List<UserAccount> getUserAppliedByJobPostId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<UserAccount> q = b.createQuery(UserAccount.class);

        Root<JobPostActivity> jARoot = q.from(JobPostActivity.class);
        Root<UserAccount> uRoot = q.from(UserAccount.class);

        q.where(b.equal(jARoot.get("userAccount"), uRoot.get("id")),
                b.equal(jARoot.get("jobPost"), id)
        );
        q.select(uRoot);

        Query query = session.createQuery(q);

        List<UserAccount> kq = query.getResultList();

        kq.forEach(k -> {
            System.out.printf("%d - id ,\n", k.getId());
        });
        return kq;
    }
}
