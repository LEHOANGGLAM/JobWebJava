/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
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
import javax.persistence.Transient;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author PC
 */
@Entity
@Table(name = "user_account")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserAccount.findAll", query = "SELECT u FROM UserAccount u"),
    @NamedQuery(name = "UserAccount.findById", query = "SELECT u FROM UserAccount u WHERE u.id = :id"),
    @NamedQuery(name = "UserAccount.findByEmail", query = "SELECT u FROM UserAccount u WHERE u.email = :email"),
    @NamedQuery(name = "UserAccount.findByPassword", query = "SELECT u FROM UserAccount u WHERE u.password = :password"),
    @NamedQuery(name = "UserAccount.findByDateOfBirth", query = "SELECT u FROM UserAccount u WHERE u.dateOfBirth = :dateOfBirth"),
    @NamedQuery(name = "UserAccount.findByGender", query = "SELECT u FROM UserAccount u WHERE u.gender = :gender"),
    @NamedQuery(name = "UserAccount.findByContactNumber", query = "SELECT u FROM UserAccount u WHERE u.contactNumber = :contactNumber"),
    @NamedQuery(name = "UserAccount.findByUserImage", query = "SELECT u FROM UserAccount u WHERE u.userImage = :userImage"),
    @NamedQuery(name = "UserAccount.findByRegistrationDate", query = "SELECT u FROM UserAccount u WHERE u.registrationDate = :registrationDate"),
    @NamedQuery(name = "UserAccount.findByUsername", query = "SELECT u FROM UserAccount u WHERE u.username = :username"),
    @NamedQuery(name = "UserAccount.findByIsComfirm", query = "SELECT u FROM UserAccount u WHERE u.isComfirm = :isComfirm"),
    @NamedQuery(name = "UserAccount.findByFirstName", query = "SELECT u FROM UserAccount u WHERE u.firstName = :firstName"),
    @NamedQuery(name = "UserAccount.findByLastName", query = "SELECT u FROM UserAccount u WHERE u.lastName = :lastName")})
public class UserAccount implements Serializable {

    @Size(max = 200)
    @Column(name = "about_me")
    private String aboutMe;

    /**
     * @return the file
     */
    public MultipartFile getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
    }

    private static final long serialVersionUID = 1L;
    
    public static final int USER = 2;
    public static final int ADMIN = 1;
    public static final int RECRUITER = 3;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 255)
    @Column(name = "email")
    private String email;
    @Size(max = 100)
    @Column(name = "password")
    private String password;
    @Column(name = "date_of_birth")
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;
    @Size(max = 10)
    @Column(name = "gender")
    private String gender;
    @Size(max = 10)
    @Column(name = "contact_number")
    private String contactNumber;
    @Size(max = 45)
    @Column(name = "user_image")
    private String userImage;
    @Column(name = "registration_date")
    @Temporal(TemporalType.DATE)
    private Date registrationDate;
    @Size(max = 45)
    @Column(name = "username")
    private String username;
    @Column(name = "is_comfirm")
    private Integer isComfirm;
    @Size(max = 45)
    @Column(name = "first_name")
    private String firstName;
    @Size(max = 45)
    @Column(name = "last_name")
    private String lastName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userAccount")
    @JsonIgnore
    private Collection<JobPostActivity> jobPostActivityCollection;
    @OneToMany(mappedBy = "userId")
    @JsonIgnore
    private Collection<Comment> commentCollection;
    @OneToMany(mappedBy = "userAccountId")
    @JsonIgnore
    private Collection<Company> companyCollection;
    @JoinColumn(name = "user_type_id", referencedColumnName = "id")
    @ManyToOne
    @JsonIgnore
    private UserType userTypeId;
    
  
    @Transient
    private MultipartFile file;
    
    @Transient
    public String ConfirmedPassword;
    
    public UserAccount() {
    }

    public UserAccount(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getIsComfirm() {
        return isComfirm;
    }

    public void setIsComfirm(Integer isComfirm) {
        this.isComfirm = isComfirm;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @XmlTransient
    public Collection<JobPostActivity> getJobPostActivityCollection() {
        return jobPostActivityCollection;
    }

    public void setJobPostActivityCollection(Collection<JobPostActivity> jobPostActivityCollection) {
        this.jobPostActivityCollection = jobPostActivityCollection;
    }

    @XmlTransient
    public Collection<Comment> getCommentCollection() {
        return commentCollection;
    }

    public void setCommentCollection(Collection<Comment> commentCollection) {
        this.commentCollection = commentCollection;
    }

    @XmlTransient
    public Collection<Company> getCompanyCollection() {
        return companyCollection;
    }

    public void setCompanyCollection(Collection<Company> companyCollection) {
        this.companyCollection = companyCollection;
    }

    public UserType getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(UserType userTypeId) {
        this.userTypeId = userTypeId;
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
        if (!(object instanceof UserAccount)) {
            return false;
        }
        UserAccount other = (UserAccount) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.UserAccount[ id=" + id + " ]";
    }

    public String getAboutMe() {
        return aboutMe;
    }

    public void setAboutMe(String aboutMe) {
        this.aboutMe = aboutMe;
    }

  
}
