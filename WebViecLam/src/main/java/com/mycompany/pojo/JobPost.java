/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author dell
 */
@Entity
@Table(name = "job_post")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "JobPost.findAll", query = "SELECT j FROM JobPost j"),
    @NamedQuery(name = "JobPost.findById", query = "SELECT j FROM JobPost j WHERE j.id = :id"),
    @NamedQuery(name = "JobPost.findByCreatedDate", query = "SELECT j FROM JobPost j WHERE j.createdDate = :createdDate"),
    @NamedQuery(name = "JobPost.findByIsActive", query = "SELECT j FROM JobPost j WHERE j.isActive = :isActive")})
public class JobPost implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Column(name = "created_date")
    @Temporal(TemporalType.DATE)
    private Date createdDate;
    @Lob
    @Size(max = 65535)
    @Column(name = "job_description")
    private String jobDescription;
    @Lob
    @Size(max = 65535)
    @Column(name = "job_requirement")
    private String jobRequirement;
    @Column(name = "is_active")
    private Character isActive;
    @Lob
    @Size(max = 65535)
    @Column(name = "job_title")
    private String jobTitle;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "jobPost")
    private Set<JobPostActivity> jobPostActivitySet;
    @JoinColumn(name = "posted_by_id", referencedColumnName = "id")
    @ManyToOne
    private Employer postedById;
    @JoinColumn(name = "job_location_id", referencedColumnName = "id")
    @ManyToOne
    private JobLocation jobLocationId;
    @JoinColumn(name = "job_type_id", referencedColumnName = "id")
    @ManyToOne
    private JobType jobTypeId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "jobPostId")
    private Set<JobPostSkillSet> jobPostSkillSetSet;

    public JobPost() {
    }

    public JobPost(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public String getJobRequirement() {
        return jobRequirement;
    }

    public void setJobRequirement(String jobRequirement) {
        this.jobRequirement = jobRequirement;
    }

    public Character getIsActive() {
        return isActive;
    }

    public void setIsActive(Character isActive) {
        this.isActive = isActive;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    @XmlTransient
    public Set<JobPostActivity> getJobPostActivitySet() {
        return jobPostActivitySet;
    }

    public void setJobPostActivitySet(Set<JobPostActivity> jobPostActivitySet) {
        this.jobPostActivitySet = jobPostActivitySet;
    }

    public Employer getPostedById() {
        return postedById;
    }

    public void setPostedById(Employer postedById) {
        this.postedById = postedById;
    }

    public JobLocation getJobLocationId() {
        return jobLocationId;
    }

    public void setJobLocationId(JobLocation jobLocationId) {
        this.jobLocationId = jobLocationId;
    }

    public JobType getJobTypeId() {
        return jobTypeId;
    }

    public void setJobTypeId(JobType jobTypeId) {
        this.jobTypeId = jobTypeId;
    }

    @XmlTransient
    public Set<JobPostSkillSet> getJobPostSkillSetSet() {
        return jobPostSkillSetSet;
    }

    public void setJobPostSkillSetSet(Set<JobPostSkillSet> jobPostSkillSetSet) {
        this.jobPostSkillSetSet = jobPostSkillSetSet;
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
        if (!(object instanceof JobPost)) {
            return false;
        }
        JobPost other = (JobPost) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.JobPost[ id=" + id + " ]";
    }
    
}
