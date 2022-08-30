/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
 * @author PC
 */
@Entity
@Table(name = "company")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Company.findAll", query = "SELECT c FROM Company c"),
    @NamedQuery(name = "Company.findById", query = "SELECT c FROM Company c WHERE c.id = :id"),
    @NamedQuery(name = "Company.findByCompanyName", query = "SELECT c FROM Company c WHERE c.companyName = :companyName"),
    @NamedQuery(name = "Company.findByProfileDescription", query = "SELECT c FROM Company c WHERE c.profileDescription = :profileDescription"),
    @NamedQuery(name = "Company.findByCreatedDate", query = "SELECT c FROM Company c WHERE c.createdDate = :createdDate"),
    @NamedQuery(name = "Company.findByImage", query = "SELECT c FROM Company c WHERE c.image = :image"),
    @NamedQuery(name = "Company.findByCompanyWebsite", query = "SELECT c FROM Company c WHERE c.companyWebsite = :companyWebsite"),
    @NamedQuery(name = "Company.findByCompanyEmail", query = "SELECT c FROM Company c WHERE c.companyEmail = :companyEmail"),
    @NamedQuery(name = "Company.findByCoverImage", query = "SELECT c FROM Company c WHERE c.coverImage = :coverImage"),
    @NamedQuery(name = "Company.findByAboutCompany", query = "SELECT c FROM Company c WHERE c.aboutCompany = :aboutCompany"),
    @NamedQuery(name = "Company.findByCompanySize", query = "SELECT c FROM Company c WHERE c.companySize = :companySize")})
public class Company implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 100)
    @Column(name = "company_name")
    private String companyName;
    @Size(max = 1000)
    @Column(name = "profile_description")
    private String profileDescription;
    @Column(name = "created_date")
    @Temporal(TemporalType.DATE)
    private Date createdDate;
    @Size(max = 200)
    @Column(name = "image")
    private String image;
    @Size(max = 200)
    @Column(name = "company_website")
    private String companyWebsite;
    @Size(max = 45)
    @Column(name = "company_email")
    private String companyEmail;
    @Size(max = 45)
    @Column(name = "cover_image")
    private String coverImage;
    @Size(max = 2000)
    @Column(name = "aboutCompany")
    private String aboutCompany;
    @Size(max = 45)
    @Column(name = "company_size")
    private String companySize;
    @OneToMany(mappedBy = "companyId")
    private Collection<Street> streetCollection;
    @OneToMany(mappedBy = "companyId")
    private Collection<JobPost> jobPostCollection;
    @OneToMany(mappedBy = "companyId", fetch = FetchType.EAGER)
    private Collection<Comment> commentCollection;
    @JoinColumn(name = "business_type_id", referencedColumnName = "id")
    @ManyToOne
    private BusinessType businessTypeId;
    @JoinColumn(name = "user_account_id", referencedColumnName = "id")
    @ManyToOne
    private UserAccount userAccountId;

    public Company() {
    }

    public Company(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getProfileDescription() {
        return profileDescription;
    }

    public void setProfileDescription(String profileDescription) {
        this.profileDescription = profileDescription;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCompanyWebsite() {
        return companyWebsite;
    }

    public void setCompanyWebsite(String companyWebsite) {
        this.companyWebsite = companyWebsite;
    }

    public String getCompanyEmail() {
        return companyEmail;
    }

    public void setCompanyEmail(String companyEmail) {
        this.companyEmail = companyEmail;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }

    public String getAboutCompany() {
        return aboutCompany;
    }

    public void setAboutCompany(String aboutCompany) {
        this.aboutCompany = aboutCompany;
    }

    public String getCompanySize() {
        return companySize;
    }

    public void setCompanySize(String companySize) {
        this.companySize = companySize;
    }

    @XmlTransient
    public Collection<Street> getStreetCollection() {
        return streetCollection;
    }

    public void setStreetCollection(Collection<Street> streetCollection) {
        this.streetCollection = streetCollection;
    }

    @XmlTransient
    public Collection<JobPost> getJobPostCollection() {
        return jobPostCollection;
    }

    public void setJobPostCollection(Collection<JobPost> jobPostCollection) {
        this.jobPostCollection = jobPostCollection;
    }

    @XmlTransient
    public Collection<Comment> getCommentCollection() {
        return commentCollection;
    }

    public void setCommentCollection(Collection<Comment> commentCollection) {
        this.commentCollection = commentCollection;
    }

    public BusinessType getBusinessTypeId() {
        return businessTypeId;
    }

    public void setBusinessTypeId(BusinessType businessTypeId) {
        this.businessTypeId = businessTypeId;
    }

    public UserAccount getUserAccountId() {
        return userAccountId;
    }

    public void setUserAccountId(UserAccount userAccountId) {
        this.userAccountId = userAccountId;
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
        if (!(object instanceof Company)) {
            return false;
        }
        Company other = (Company) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.Company[ id=" + id + " ]";
    }
    
}
