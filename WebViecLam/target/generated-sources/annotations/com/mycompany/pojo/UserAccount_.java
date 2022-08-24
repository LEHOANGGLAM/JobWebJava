package com.mycompany.pojo;

import com.mycompany.pojo.Comment;
import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPostActivity;
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
@StaticMetamodel(UserAccount.class)
public class UserAccount_ { 

    public static volatile SingularAttribute<UserAccount, Integer> userTypeId;
    public static volatile SingularAttribute<UserAccount, Integer> isComfirm;
    public static volatile SingularAttribute<UserAccount, String> lastName;
    public static volatile SingularAttribute<UserAccount, String> gender;
    public static volatile CollectionAttribute<UserAccount, Company> companyCollection;
    public static volatile CollectionAttribute<UserAccount, Comment> commentCollection;
    public static volatile SingularAttribute<UserAccount, Date> dateOfBirth;
    public static volatile SingularAttribute<UserAccount, String> aboutMe;
    public static volatile SingularAttribute<UserAccount, String> firstName;
    public static volatile SingularAttribute<UserAccount, String> password;
    public static volatile SingularAttribute<UserAccount, String> userImage;
    public static volatile SingularAttribute<UserAccount, String> contactNumber;
    public static volatile SingularAttribute<UserAccount, Date> registrationDate;
    public static volatile SingularAttribute<UserAccount, Integer> id;
    public static volatile CollectionAttribute<UserAccount, JobPostActivity> jobPostActivityCollection;
    public static volatile SingularAttribute<UserAccount, String> email;
    public static volatile SingularAttribute<UserAccount, String> username;

}