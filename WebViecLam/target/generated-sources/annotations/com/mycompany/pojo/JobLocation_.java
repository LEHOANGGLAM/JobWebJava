package com.mycompany.pojo;

import com.mycompany.pojo.JobPost;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-20T17:15:37")
@StaticMetamodel(JobLocation.class)
public class JobLocation_ { 

    public static volatile CollectionAttribute<JobLocation, JobPost> jobPostCollection;
    public static volatile SingularAttribute<JobLocation, String> city;
    public static volatile SingularAttribute<JobLocation, Integer> id;

}