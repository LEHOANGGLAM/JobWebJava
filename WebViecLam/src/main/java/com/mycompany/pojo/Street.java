/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author PC
 */
@Entity
@Table(name = "street")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Street.findAll", query = "SELECT s FROM Street s"),
    @NamedQuery(name = "Street.findById", query = "SELECT s FROM Street s WHERE s.id = :id"),
    @NamedQuery(name = "Street.findByStreetName", query = "SELECT s FROM Street s WHERE s.streetName = :streetName")})
public class Street implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "street_name")
    private String streetName;
    @JoinColumn(name = "company_id", referencedColumnName = "id")
    @ManyToOne
    private Company companyId;
    @JoinColumn(name = "city_id", referencedColumnName = "id")
    @ManyToOne
    private Location cityId;
    @OneToMany(mappedBy = "jobStreetId")
    private Collection<JobPost> jobPostCollection;

    public Street() {
    }

    public Street(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public Company getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Company companyId) {
        this.companyId = companyId;
    }

    public Location getCityId() {
        return cityId;
    }

    public void setCityId(Location cityId) {
        this.cityId = cityId;
    }

    @XmlTransient
    public Collection<JobPost> getJobPostCollection() {
        return jobPostCollection;
    }

    public void setJobPostCollection(Collection<JobPost> jobPostCollection) {
        this.jobPostCollection = jobPostCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Street)) {
            return false;
        }
        Street other = (Street) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.Street[ id=" + id + " ]";
    }
    
}
