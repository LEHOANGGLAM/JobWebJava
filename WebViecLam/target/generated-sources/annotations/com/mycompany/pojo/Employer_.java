package com.mycompany.pojo;

import com.mycompany.pojo.BusinessType;
import com.mycompany.pojo.JobPost;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-13T01:34:28")
@StaticMetamodel(Employer.class)
public class Employer_ { 

    public static volatile SingularAttribute<Employer, String> image;
    public static volatile SingularAttribute<Employer, Date> createdDate;
    public static volatile SingularAttribute<Employer, String> profileDescription;
    public static volatile SingularAttribute<Employer, String> companyName;
    public static volatile SetAttribute<Employer, JobPost> jobPostSet;
    public static volatile SingularAttribute<Employer, Integer> id;
    public static volatile SingularAttribute<Employer, BusinessType> businessTypeId;

}