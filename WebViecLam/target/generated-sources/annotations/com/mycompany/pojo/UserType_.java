package com.mycompany.pojo;

import com.mycompany.pojo.Category;
import com.mycompany.pojo.UserAccount;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

<<<<<<< HEAD
@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T02:39:35")
=======
@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T01:47:17")
>>>>>>> 663ab3a448e8b26b3add399682d9010c97aa1088
@StaticMetamodel(UserType.class)
public class UserType_ { 

    public static volatile CollectionAttribute<UserType, Category> categoryCollection;
    public static volatile SingularAttribute<UserType, String> userTypeName;
    public static volatile CollectionAttribute<UserType, UserAccount> userAccountCollection;
    public static volatile SingularAttribute<UserType, Integer> id;

}