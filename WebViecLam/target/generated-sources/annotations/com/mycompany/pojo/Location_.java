package com.mycompany.pojo;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.Street;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T16:45:58")
@StaticMetamodel(Location.class)
public class Location_ { 

    public static volatile CollectionAttribute<Location, JobPost> jobPostCollection;
    public static volatile SingularAttribute<Location, String> city;
    public static volatile CollectionAttribute<Location, Street> streetCollection;
    public static volatile SingularAttribute<Location, Integer> id;

}