package com.mycompany.pojo;

import com.mycompany.pojo.New1;
import com.mycompany.pojo.UserType;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

<<<<<<< HEAD
@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T02:39:35")
=======
@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T01:47:17")
>>>>>>> 663ab3a448e8b26b3add399682d9010c97aa1088
@StaticMetamodel(Category.class)
public class Category_ { 

    public static volatile CollectionAttribute<Category, New1> new1Collection;
    public static volatile SingularAttribute<Category, UserType> userTypeId;
    public static volatile SingularAttribute<Category, Integer> active;
    public static volatile SingularAttribute<Category, Integer> id;
    public static volatile SingularAttribute<Category, String> categoryName;
    public static volatile SingularAttribute<Category, Integer> parentCateId;
    public static volatile SingularAttribute<Category, String> content;
    public static volatile SingularAttribute<Category, String> linkCate;

}