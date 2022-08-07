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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
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
    @NamedQuery(name = "JobPost.findByJobDescription", query = "SELECT j FROM JobPost j WHERE j.jobDescription = :jobDescription"),
    @NamedQuery(name = "JobPost.findByJobRequirement", query = "SELECT j FROM JobPost j WHERE j.jobRequirement = :jobRequirement"),
    @NamedQuery(name = "JobPost.findByIsActive", query = "SELECT j FROM JobPost j WHERE j.isActive = :isActive"),
    @NamedQuery(name = "JobPost.findByJobTitle", query = "SELECT j FROM JobPost j WHERE j.jobTitle = :jobTitle"),
    @NamedQuery(name = "JobPost.findByJobMinSalary", query = "SELECT j FROM JobPost j WHERE j.jobMinSalary = :jobMinSalary"),
    @NamedQuery(name = "JobPost.findByJobMaxSalary", query = "SELECT j FROM JobPost j WHERE j.jobMaxSalary = :jobMaxSalary"),
    @NamedQuery(name = "JobPost.findByYearExperRequire", query = "SELECT j FROM JobPost j WHERE j.yearExperRequire = :yearExperRequire"),
    @NamedQuery(name = "JobPost.findByJobStreet", query = "SELECT j FROM JobPost j WHERE j.jobStreet = :jobStreet")})
public class JobPost implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "created_date")
    @Temporal(TemporalType.DATE)
    private Date createdDate;
    @Size(max = 45)
    @Column(name = "job_description")
    private String jobDescription;
    @Size(max = 45)
    @Column(name = "job_requirement")
    private String jobRequirement;
    @Column(name = "is_active")
    private Integer isActive;
    @Size(max = 45)
    @Column(name = "job_title")
    private String jobTitle;
    @Column(name = "job_min_salary")
    private Integer jobMinSalary;
    @Column(name = "job_max_salary")
    private Integer jobMaxSalary;
    @Column(name = "year_exper_require")
    private Integer yearExperRequire;
    @Size(max = 45)
    @Column(name = "job_street")
    private String jobStreet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "jobPost")
    private Set<JobPostActivity> jobPostActivitySet;
    @JoinColumn(name = "employer_id", referencedColumnName = "id")
    @ManyToOne
    private Employer employerId;
    @JoinColumn(name = "job_location_id", referencedColumnName = "id")
    @ManyToOne
    private JobLocation jobLocationId;
    @JoinColumn(name = "job_type_id", referencedColumnName = "id")
    @ManyToOne
    private JobType jobTypeId;
    @OneToMany(mappedBy = "jobPostId")
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

    public Integer getIsActive() {
        return isActive;
    }

    public void setIsActive(Integer isActive) {
        this.isActive = isActive;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public Integer getJobMinSalary() {
        return jobMinSalary;
    }

    public void setJobMinSalary(Integer jobMinSalary) {
        this.jobMinSalary = jobMinSalary;
    }

    public Integer getJobMaxSalary() {
        return jobMaxSalary;
    }

    public void setJobMaxSalary(Integer jobMaxSalary) {
        this.jobMaxSalary = jobMaxSalary;
    }

    public Integer getYearExperRequire() {
        return yearExperRequire;
    }

    public void setYearExperRequire(Integer yearExperRequire) {
        this.yearExperRequire = yearExperRequire;
    }

    public String getJobStreet() {
        return jobStreet;
    }

    public void setJobStreet(String jobStreet) {
        this.jobStreet = jobStreet;
    }

    @XmlTransient
    public Set<JobPostActivity> getJobPostActivitySet() {
        return jobPostActivitySet;
    }

    public void setJobPostActivitySet(Set<JobPostActivity> jobPostActivitySet) {
        this.jobPostActivitySet = jobPostActivitySet;
    }

    public Employer getEmployerId() {
        return employerId;
    }

    public void setEmployerId(Employer employerId) {
        this.employerId = employerId;
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
