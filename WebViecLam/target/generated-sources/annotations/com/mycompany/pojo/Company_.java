package com.mycompany.pojo;

import com.mycompany.pojo.BusinessType;
import com.mycompany.pojo.JobPost;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-17T15:19:12")
@StaticMetamodel(Company.class)
public class Company_ { 

    public static volatile SingularAttribute<Company, String> image;
    public static volatile SingularAttribute<Company, Date> createdDate;
    public static volatile SingularAttribute<Company, String> profileDescription;
    public static volatile SingularAttribute<Company, String> companyEmail;
    public static volatile SingularAttribute<Company, String> companyName;
    public static volatile SingularAttribute<Company, String> coverImage;
    public static volatile SetAttribute<Company, JobPost> jobPostSet;
    public static volatile SingularAttribute<Company, Integer> id;
    public static volatile SingularAttribute<Company, String> companyWebsite;
    public static volatile SingularAttribute<Company, BusinessType> businessTypeId;

}