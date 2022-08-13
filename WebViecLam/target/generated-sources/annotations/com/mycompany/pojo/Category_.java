package com.mycompany.pojo;

import com.mycompany.pojo.UserType;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-13T16:47:41")
@StaticMetamodel(Category.class)
public class Category_ { 

    public static volatile SingularAttribute<Category, UserType> userTypeId;
    public static volatile SingularAttribute<Category, Integer> active;
    public static volatile SingularAttribute<Category, Integer> id;
    public static volatile SingularAttribute<Category, String> categoryName;
    public static volatile SingularAttribute<Category, Integer> parentCateId;
    public static volatile SingularAttribute<Category, String> content;

}