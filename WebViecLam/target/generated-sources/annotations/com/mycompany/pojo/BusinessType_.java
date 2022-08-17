package com.mycompany.pojo;

import com.mycompany.pojo.Company;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-17T15:19:12")
@StaticMetamodel(BusinessType.class)
public class BusinessType_ { 

    public static volatile SingularAttribute<BusinessType, String> businessTypeName;
    public static volatile SingularAttribute<BusinessType, Integer> id;
    public static volatile SetAttribute<BusinessType, Company> companySet;

}