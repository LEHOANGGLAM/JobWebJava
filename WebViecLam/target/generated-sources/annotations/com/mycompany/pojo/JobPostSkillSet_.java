package com.mycompany.pojo;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.SkillSet;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-28T22:58:06")
@StaticMetamodel(JobPostSkillSet.class)
public class JobPostSkillSet_ { 

    public static volatile SingularAttribute<JobPostSkillSet, SkillSet> skillSet;
    public static volatile SingularAttribute<JobPostSkillSet, JobPost> jobPostId;
    public static volatile SingularAttribute<JobPostSkillSet, Integer> skillSetId;
    public static volatile SingularAttribute<JobPostSkillSet, String> skillLevel;

}