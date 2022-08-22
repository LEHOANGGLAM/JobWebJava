package com.mycompany.pojo;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.UserAccount;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-22T09:44:18")
@StaticMetamodel(Comment.class)
public class Comment_ { 

    public static volatile SingularAttribute<Comment, Company> companyId;
    public static volatile SingularAttribute<Comment, UserAccount> userAccount;
    public static volatile SingularAttribute<Comment, Integer> userId;
    public static volatile SingularAttribute<Comment, String> content;

}