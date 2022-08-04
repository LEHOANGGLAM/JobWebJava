/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author dell
 */
@Entity
@Table(name = "job_location")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "JobLocation.findAll", query = "SELECT j FROM JobLocation j"),
    @NamedQuery(name = "JobLocation.findById", query = "SELECT j FROM JobLocation j WHERE j.id = :id"),
    @NamedQuery(name = "JobLocation.findByStreetAddress", query = "SELECT j FROM JobLocation j WHERE j.streetAddress = :streetAddress"),
    @NamedQuery(name = "JobLocation.findByCity", query = "SELECT j FROM JobLocation j WHERE j.city = :city")})
public class JobLocation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 100)
    @Column(name = "street_address")
    private String streetAddress;
    @Size(max = 50)
    @Column(name = "city")
    private String city;
    @OneToMany(mappedBy = "jobLocationId")
    private Set<JobPost> jobPostSet;

    public JobLocation() {
    }

    public JobLocation(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @XmlTransient
    public Set<JobPost> getJobPostSet() {
        return jobPostSet;
    }

    public void setJobPostSet(Set<JobPost> jobPostSet) {
        this.jobPostSet = jobPostSet;
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
        if (!(object instanceof JobLocation)) {
            return false;
        }
        JobLocation other = (JobLocation) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.JobLocation[ id=" + id + " ]";
    }
    
}
