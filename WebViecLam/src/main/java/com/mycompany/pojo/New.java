/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pojo;

import java.io.Serializable;
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
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author dell
 */
@Entity
@Table(name = "new")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "New.findAll", query = "SELECT n FROM New n"),
    @NamedQuery(name = "New.findById", query = "SELECT n FROM New n WHERE n.id = :id"),
    @NamedQuery(name = "New.findByTitle", query = "SELECT n FROM New n WHERE n.title = :title"),
    @NamedQuery(name = "New.findByContent", query = "SELECT n FROM New n WHERE n.content = :content"),
    @NamedQuery(name = "New.findByImage", query = "SELECT n FROM New n WHERE n.image = :image"),
    @NamedQuery(name = "New.findByDescription", query = "SELECT n FROM New n WHERE n.description = :description")})
public class New implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "title")
    private String title;
    @Size(max = 45)
    @Column(name = "content")
    private String content;
    @Size(max = 45)
    @Column(name = "image")
    private String image;
    @Size(max = 45)
    @Column(name = "description")
    private String description;
    @JoinColumn(name = "cate_id", referencedColumnName = "id")
    @ManyToOne
    private Category cateId;

    public New() {
    }

    public New(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Category getCateId() {
        return cateId;
    }

    public void setCateId(Category cateId) {
        this.cateId = cateId;
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
        if (!(object instanceof New)) {
            return false;
        }
        New other = (New) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.pojo.New[ id=" + id + " ]";
    }
    
}
