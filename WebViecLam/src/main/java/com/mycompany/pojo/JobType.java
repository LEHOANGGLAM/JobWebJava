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
@Table(name = "job_type")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "JobType.findAll", query = "SELECT j FROM JobType j"),
    @NamedQuery(name = "JobType.findById", query = "SELECT j FROM JobType j WHERE j.id = :id"),
    @NamedQuery(name = "JobType.findByJobType", query = "SELECT j FROM JobType j WHERE j.jobType = :jobType")})
public class JobType implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "job_type")
    private String jobType;
    @OneToMany(mappedBy = "jobTypeId")
    private Set<JobPost> jobPostSet;

    public JobType() {
    }

    public JobType(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
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
        if (!(object instanceof JobType)) {
            return false;
        }
        JobType other = (JobType) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.JobType[ id=" + id + " ]";
    }
    
}
