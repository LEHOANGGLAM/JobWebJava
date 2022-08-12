package com.mycompany.pojo;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.JobPostActivityPK;
import com.mycompany.pojo.UserAccount;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-13T01:34:28")
@StaticMetamodel(JobPostActivity.class)
public class JobPostActivity_ { 

    public static volatile SingularAttribute<JobPostActivity, JobPost> jobPost;
    public static volatile SingularAttribute<JobPostActivity, UserAccount> userAccount;
    public static volatile SingularAttribute<JobPostActivity, JobPostActivityPK> jobPostActivityPK;
    public static volatile SingularAttribute<JobPostActivity, Date> applyDate;

}