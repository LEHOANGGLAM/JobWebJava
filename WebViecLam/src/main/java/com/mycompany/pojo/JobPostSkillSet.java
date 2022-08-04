/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author dell
 */
@Entity
@Table(name = "job_post_skill_set")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "JobPostSkillSet.findAll", query = "SELECT j FROM JobPostSkillSet j"),
    @NamedQuery(name = "JobPostSkillSet.findBySkillSetId", query = "SELECT j FROM JobPostSkillSet j WHERE j.skillSetId = :skillSetId"),
    @NamedQuery(name = "JobPostSkillSet.findBySkillLevel", query = "SELECT j FROM JobPostSkillSet j WHERE j.skillLevel = :skillLevel")})
public class JobPostSkillSet implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "skill_set_id")
    private Integer skillSetId;
    @Size(max = 45)
    @Column(name = "skill_level")
    private String skillLevel;
    @JoinColumn(name = "job_post_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private JobPost jobPostId;
    @JoinColumn(name = "skill_set_id", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private SkillSet skillSet;

    public JobPostSkillSet() {
    }

    public JobPostSkillSet(Integer skillSetId) {
        this.skillSetId = skillSetId;
    }

    public Integer getSkillSetId() {
        return skillSetId;
    }

    public void setSkillSetId(Integer skillSetId) {
        this.skillSetId = skillSetId;
    }

    public String getSkillLevel() {
        return skillLevel;
    }

    public void setSkillLevel(String skillLevel) {
        this.skillLevel = skillLevel;
    }

    public JobPost getJobPostId() {
        return jobPostId;
    }

    public void setJobPostId(JobPost jobPostId) {
        this.jobPostId = jobPostId;
    }

    public SkillSet getSkillSet() {
        return skillSet;
    }

    public void setSkillSet(SkillSet skillSet) {
        this.skillSet = skillSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (skillSetId != null ? skillSetId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof JobPostSkillSet)) {
            return false;
        }
        JobPostSkillSet other = (JobPostSkillSet) object;
        if ((this.skillSetId == null && other.skillSetId != null) || (this.skillSetId != null && !this.skillSetId.equals(other.skillSetId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.JobPostSkillSet[ skillSetId=" + skillSetId + " ]";
    }
    
}
