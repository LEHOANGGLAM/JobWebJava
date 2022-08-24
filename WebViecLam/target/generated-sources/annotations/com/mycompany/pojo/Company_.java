package com.mycompany.pojo;

import com.mycompany.pojo.BusinessType;
import com.mycompany.pojo.Comment;
import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.Street;
import com.mycompany.pojo.UserAccount;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

<<<<<<< HEAD
@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T02:39:35")
=======
@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T01:47:17")
>>>>>>> 663ab3a448e8b26b3add399682d9010c97aa1088
@StaticMetamodel(Company.class)
public class Company_ { 

    public static volatile SingularAttribute<Company, String> image;
    public static volatile SingularAttribute<Company, String> profileDescription;
    public static volatile SingularAttribute<Company, String> companyName;
    public static volatile CollectionAttribute<Company, Street> streetCollection;
    public static volatile CollectionAttribute<Company, Comment> commentCollection;
    public static volatile SingularAttribute<Company, String> companySize;
    public static volatile SingularAttribute<Company, BusinessType> businessTypeId;
    public static volatile SingularAttribute<Company, Date> createdDate;
    public static volatile SingularAttribute<Company, String> aboutCompany;
    public static volatile CollectionAttribute<Company, JobPost> jobPostCollection;
    public static volatile SingularAttribute<Company, String> companyEmail;
    public static volatile SingularAttribute<Company, String> coverImage;
    public static volatile SingularAttribute<Company, UserAccount> userAccountId;
    public static volatile SingularAttribute<Company, Integer> id;
    public static volatile SingularAttribute<Company, String> companyWebsite;

}