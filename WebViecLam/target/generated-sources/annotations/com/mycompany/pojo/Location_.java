package com.mycompany.pojo;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.Street;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

<<<<<<< HEAD
@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T02:39:35")
=======
@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T01:47:17")
>>>>>>> 663ab3a448e8b26b3add399682d9010c97aa1088
@StaticMetamodel(Location.class)
public class Location_ { 

    public static volatile CollectionAttribute<Location, JobPost> jobPostCollection;
    public static volatile SingularAttribute<Location, String> city;
    public static volatile CollectionAttribute<Location, Street> streetCollection;
    public static volatile SingularAttribute<Location, Integer> id;

}