package com.mycompany.pojo;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.Street;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-28T04:24:50")
@StaticMetamodel(Location.class)
public class Location_ { 

    public static volatile SetAttribute<Location, Street> streetSet;
    public static volatile SingularAttribute<Location, String> city;
    public static volatile SetAttribute<Location, JobPost> jobPostSet;
    public static volatile SingularAttribute<Location, Integer> id;

}