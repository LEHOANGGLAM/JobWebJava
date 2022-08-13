/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Category;
import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPost;
import com.mycompany.repository.CateRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
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
public class CateRepositoryImpl implements CateRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Environment env;

    @Override
    public List<Category> getCateList() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Category");

        return q.getResultList();
    }

    @Override
    public Category getCateByLink(String link) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Category> q = b.createQuery(Category.class);

        Root<Category> cRoot = q.from(Category.class);

        q.select(cRoot).where(b.equal(cRoot.get("linkCate"), link));
        Query query = session.createQuery(q);
        List<Category> cList = query.getResultList();
        Category c = cList.get(0);

        System.out.printf("%s - content\n ", c.getContent());

        return c;
    }
}
