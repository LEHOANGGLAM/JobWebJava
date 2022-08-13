package com.mycompany.pojo;

import com.mycompany.pojo.Category;
import com.mycompany.pojo.UserAccount;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-13T19:18:09")
@StaticMetamodel(UserType.class)
public class UserType_ { 

    public static volatile SetAttribute<UserType, UserAccount> userAccountSet;
    public static volatile SingularAttribute<UserType, String> userTypeName;
    public static volatile SingularAttribute<UserType, Integer> id;
    public static volatile SetAttribute<UserType, Category> categorySet;

}