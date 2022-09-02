package com.mycompany.pojo;

import com.mycompany.pojo.Category;
import com.mycompany.pojo.UserAccount;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;


@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-02T00:42:17")

@StaticMetamodel(UserType.class)
public class UserType_ { 

    public static volatile CollectionAttribute<UserType, Category> categoryCollection;
    public static volatile SingularAttribute<UserType, String> userTypeName;
    public static volatile CollectionAttribute<UserType, UserAccount> userAccountCollection;
    public static volatile SingularAttribute<UserType, Integer> id;

}