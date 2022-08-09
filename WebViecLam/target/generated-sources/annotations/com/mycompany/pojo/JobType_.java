package com.mycompany.pojo;

import com.mycompany.pojo.JobPost;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-09T17:48:26")
@StaticMetamodel(JobType.class)
public class JobType_ { 

    public static volatile SetAttribute<JobType, JobPost> jobPostSet;
    public static volatile SingularAttribute<JobType, Integer> id;
    public static volatile SingularAttribute<JobType, String> jobType;

}