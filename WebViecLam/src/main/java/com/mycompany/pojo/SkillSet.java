/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author PC
 */
@Entity
@Table(name = "skill_set")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SkillSet.findAll", query = "SELECT s FROM SkillSet s"),
    @NamedQuery(name = "SkillSet.findById", query = "SELECT s FROM SkillSet s WHERE s.id = :id"),
    @NamedQuery(name = "SkillSet.findBySkillSetName", query = "SELECT s FROM SkillSet s WHERE s.skillSetName = :skillSetName")})
public class SkillSet implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 50)
    @Column(name = "skill_set_name")
    private String skillSetName;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "skillSet")
    private JobPostSkillSet jobPostSkillSet;

    public SkillSet() {
    }

    public SkillSet(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSkillSetName() {
        return skillSetName;
    }

    public void setSkillSetName(String skillSetName) {
        this.skillSetName = skillSetName;
    }

    public JobPostSkillSet getJobPostSkillSet() {
        return jobPostSkillSet;
    }

    public void setJobPostSkillSet(JobPostSkillSet jobPostSkillSet) {
        this.jobPostSkillSet = jobPostSkillSet;
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
        if (!(object instanceof SkillSet)) {
            return false;
        }
        SkillSet other = (SkillSet) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.SkillSet[ id=" + id + " ]";
    }
    
}
