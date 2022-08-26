package com.mycompany.pojo;

import com.mycompany.pojo.JobPost;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-26T13:30:59")
@StaticMetamodel(JobType.class)
public class JobType_ { 

    public static volatile CollectionAttribute<JobType, JobPost> jobPostCollection;
    public static volatile SingularAttribute<JobType, Integer> id;
    public static volatile SingularAttribute<JobType, String> jobType;

}