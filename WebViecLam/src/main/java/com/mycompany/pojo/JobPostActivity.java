/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author dell
 */
@Entity
@Table(name = "job_post_activity")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "JobPostActivity.findAll", query = "SELECT j FROM JobPostActivity j"),
    @NamedQuery(name = "JobPostActivity.findByApplyDate", query = "SELECT j FROM JobPostActivity j WHERE j.applyDate = :applyDate"),
    @NamedQuery(name = "JobPostActivity.findByJobPostId", query = "SELECT j FROM JobPostActivity j WHERE j.jobPostActivityPK.jobPostId = :jobPostId"),
    @NamedQuery(name = "JobPostActivity.findByUserAccountId", query = "SELECT j FROM JobPostActivity j WHERE j.jobPostActivityPK.userAccountId = :userAccountId")})
public class JobPostActivity implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected JobPostActivityPK jobPostActivityPK;
    @Column(name = "apply_date")
    @Temporal(TemporalType.DATE)
    private Date applyDate;
    @JoinColumn(name = "job_post_id", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private JobPost jobPost;
    @JoinColumn(name = "user_account_id", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private UserAccount userAccount;

    public JobPostActivity() {
    }

    public JobPostActivity(JobPostActivityPK jobPostActivityPK) {
        this.jobPostActivityPK = jobPostActivityPK;
    }

    public JobPostActivity(int jobPostId, int userAccountId) {
        this.jobPostActivityPK = new JobPostActivityPK(jobPostId, userAccountId);
    }

    public JobPostActivityPK getJobPostActivityPK() {
        return jobPostActivityPK;
    }

    public void setJobPostActivityPK(JobPostActivityPK jobPostActivityPK) {
        this.jobPostActivityPK = jobPostActivityPK;
    }

    public Date getApplyDate() {
        return applyDate;
    }

    public void setApplyDate(Date applyDate) {
        this.applyDate = applyDate;
    }

    public JobPost getJobPost() {
        return jobPost;
    }

    public void setJobPost(JobPost jobPost) {
        this.jobPost = jobPost;
    }

    public UserAccount getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(UserAccount userAccount) {
        this.userAccount = userAccount;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (jobPostActivityPK != null ? jobPostActivityPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof JobPostActivity)) {
            return false;
        }
        JobPostActivity other = (JobPostActivity) object;
        if ((this.jobPostActivityPK == null && other.jobPostActivityPK != null) || (this.jobPostActivityPK != null && !this.jobPostActivityPK.equals(other.jobPostActivityPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.JobPostActivity[ jobPostActivityPK=" + jobPostActivityPK + " ]";
    }
    
}
