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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author dell
 */
@Entity
@Table(name = "category")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Category.findAll", query = "SELECT c FROM Category c"),
    @NamedQuery(name = "Category.findById", query = "SELECT c FROM Category c WHERE c.id = :id"),
    @NamedQuery(name = "Category.findByCategoryName", query = "SELECT c FROM Category c WHERE c.categoryName = :categoryName"),
    @NamedQuery(name = "Category.findByParentCateId", query = "SELECT c FROM Category c WHERE c.parentCateId = :parentCateId"),
    @NamedQuery(name = "Category.findByContent", query = "SELECT c FROM Category c WHERE c.content = :content"),
    @NamedQuery(name = "Category.findByActive", query = "SELECT c FROM Category c WHERE c.active = :active"),
    @NamedQuery(name = "Category.findByLinkCate", query = "SELECT c FROM Category c WHERE c.linkCate = :linkCate")})
public class Category implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "category_name")
    private String categoryName;
    @Column(name = "parent_cate_id")
    private Integer parentCateId;
    @Size(max = 45)
    @Column(name = "content")
    private String content;
    @Column(name = "active")
    private Integer active;
    @Size(max = 45)
    @Column(name = "link_cate")
    private String linkCate;
    @OneToMany(mappedBy = "cateId")
    private Set<New> new1Set;
    @JoinColumn(name = "user_type_id", referencedColumnName = "id")
    @ManyToOne
    private UserType userTypeId;

    public Category() {
    }

    public Category(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Integer getParentCateId() {
        return parentCateId;
    }

    public void setParentCateId(Integer parentCateId) {
        this.parentCateId = parentCateId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getActive() {
        return active;
    }

    public void setActive(Integer active) {
        this.active = active;
    }

    public String getLinkCate() {
        return linkCate;
    }

    public void setLinkCate(String linkCate) {
        this.linkCate = linkCate;
    }

    @XmlTransient
    public Set<New> getNewSet() {
        return new1Set;
    }

    public void setNewSet(Set<New> new1Set) {
        this.new1Set = new1Set;
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
        if (!(object instanceof Category)) {
            return false;
        }
        Category other = (Category) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.Category[ id=" + id + " ]";
    }
    
}
