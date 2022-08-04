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
    @Column(name = "user_id")
    private int userId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "job_post_id")
    private int jobPostId;

    public JobPostActivityPK() {
    }

    public JobPostActivityPK(int userId, int jobPostId) {
        this.userId = userId;
        this.jobPostId = jobPostId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getJobPostId() {
        return jobPostId;
    }

    public void setJobPostId(int jobPostId) {
        this.jobPostId = jobPostId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) userId;
        hash += (int) jobPostId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof JobPostActivityPK)) {
            return false;
        }
        JobPostActivityPK other = (JobPostActivityPK) object;
        if (this.userId != other.userId) {
            return false;
        }
        if (this.jobPostId != other.jobPostId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.JobPostActivityPK[ userId=" + userId + ", jobPostId=" + jobPostId + " ]";
    }
    
}
