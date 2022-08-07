package com.mycompany.pojo;

import com.mycompany.pojo.Employer;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-07T03:50:09")
@StaticMetamodel(BusinessType.class)
public class BusinessType_ { 

    public static volatile SingularAttribute<BusinessType, String> businessTypeName;
    public static volatile SetAttribute<BusinessType, Employer> employerSet;
    public static volatile SingularAttribute<BusinessType, Integer> id;

}