package com.mycompany.pojo;

import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.UserType;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-08T03:13:12")
@StaticMetamodel(UserAccount.class)
public class UserAccount_ { 

    public static volatile SingularAttribute<UserAccount, String> password;
    public static volatile SingularAttribute<UserAccount, String> userImage;
    public static volatile SingularAttribute<UserAccount, String> gender;
    public static volatile SingularAttribute<UserAccount, String> contactNumber;
    public static volatile SingularAttribute<UserAccount, Date> registrationDate;
    public static volatile SingularAttribute<UserAccount, Date> dateOfBirth;
    public static volatile SingularAttribute<UserAccount, Integer> id;
    public static volatile SingularAttribute<UserAccount, UserType> useTypeId;
    public static volatile SingularAttribute<UserAccount, String> userName;
    public static volatile SingularAttribute<UserAccount, String> email;
    public static volatile SetAttribute<UserAccount, JobPostActivity> jobPostActivitySet;

}