/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository.impl;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.Location;
import com.mycompany.pojo.Street;
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
import com.mycompany.repository.LocationRepository;

/**
 *
 * @author dell
 */
@Repository
@Transactional
public class LocationRepositoryImpl implements LocationRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Location> getCities() {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Location> q = b.createQuery(Location.class);
        Root root = q.from(Location.class);
        q.select(root);
        Query query = session.createQuery(q);

        return query.getResultList();
    }

    @Override
    public List<Street> getLocaByComId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Street> q = b.createQuery(Street.class);

        Root<Company> cRoot = q.from(Company.class);
        Root<Street> sRoot = q.from(Street.class);

        q.select(sRoot).where(b.equal(cRoot.get("id"), sRoot.get("companyId")),
                b.equal(cRoot.get("id"), id));

        Query query = session.createQuery(q);
        List<Street> sList = query.getResultList();

        return sList;

    }

    @Override
    public int countLocaByComId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Street> q = b.createQuery(Street.class);

        Root<Street> sRoot = q.from(Street.class);

        q.multiselect(b.count(sRoot.get("id").as(Integer.class)));
        q.where(b.equal(sRoot.get("companyId"), id));
        Query query = session.createQuery(q);
        return Integer.parseInt(query.getSingleResult().toString());
    }

    @Override
    public Street getStreetById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(Street.class, id);
    }

    @Override
    public Location getCityById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(Location.class, id);
    }
}
