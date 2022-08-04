package com.mycompany.pojo;

import com.mycompany.pojo.JobPost;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-04T18:28:52")
@StaticMetamodel(JobLocation.class)
public class JobLocation_ { 

    public static volatile SingularAttribute<JobLocation, String> streetAddress;
    public static volatile SingularAttribute<JobLocation, String> city;
    public static volatile SetAttribute<JobLocation, JobPost> jobPostSet;
    public static volatile SingularAttribute<JobLocation, Integer> id;

}