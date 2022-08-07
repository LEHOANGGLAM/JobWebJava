/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author dell
 */
@Embeddable
public class JobPostActivityPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "job_post_id")
    private int jobPostId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "user_account_id")
    private int userAccountId;

    public JobPostActivityPK() {
    }

    public JobPostActivityPK(int jobPostId, int userAccountId) {
        this.jobPostId = jobPostId;
        this.userAccountId = userAccountId;
    }

    public int getJobPostId() {
        return jobPostId;
    }

    public void setJobPostId(int jobPostId) {
        this.jobPostId = jobPostId;
    }

    public int getUserAccountId() {
        return userAccountId;
    }

    public void setUserAccountId(int userAccountId) {
        this.userAccountId = userAccountId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) jobPostId;
        hash += (int) userAccountId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof JobPostActivityPK)) {
            return false;
        }
        JobPostActivityPK other = (JobPostActivityPK) object;
        if (this.jobPostId != other.jobPostId) {
            return false;
        }
        if (this.userAccountId != other.userAccountId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.JobPostActivityPK[ jobPostId=" + jobPostId + ", userAccountId=" + userAccountId + " ]";
    }
    
}
