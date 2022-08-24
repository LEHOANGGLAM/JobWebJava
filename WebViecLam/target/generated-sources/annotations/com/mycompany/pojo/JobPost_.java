package com.mycompany.pojo;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.JobPostActivity;
import com.mycompany.pojo.JobPostSkillSet;
import com.mycompany.pojo.JobType;
import com.mycompany.pojo.Location;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T01:47:17")
@StaticMetamodel(JobPost.class)
public class JobPost_ { 

    public static volatile SingularAttribute<JobPost, Integer> jobMinSalary;
    public static volatile SingularAttribute<JobPost, Location> jobLocationId;
    public static volatile SingularAttribute<JobPost, String> individualRight;
    public static volatile SingularAttribute<JobPost, Integer> jobMaxSalary;
    public static volatile CollectionAttribute<JobPost, JobPostSkillSet> jobPostSkillSetCollection;
    public static volatile SingularAttribute<JobPost, String> jobNature;
    public static volatile SingularAttribute<JobPost, String> jobTitle;
    public static volatile SingularAttribute<JobPost, Integer> isActive;
    public static volatile SingularAttribute<JobPost, Integer> yearExperRequire;
    public static volatile SingularAttribute<JobPost, Company> companyId;
    public static volatile SingularAttribute<JobPost, Date> createdDate;
    public static volatile SingularAttribute<JobPost, String> jobStreet;
    public static volatile SingularAttribute<JobPost, String> jobDescription;
    public static volatile SingularAttribute<JobPost, Integer> id;
    public static volatile SingularAttribute<JobPost, Integer> vacancy;
    public static volatile CollectionAttribute<JobPost, JobPostActivity> jobPostActivityCollection;
    public static volatile SingularAttribute<JobPost, JobType> jobTypeId;
    public static volatile SingularAttribute<JobPost, Date> expirationDate;
    public static volatile SingularAttribute<JobPost, String> jobRequirement;

}