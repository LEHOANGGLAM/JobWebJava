package com.mycompany.pojo;

import com.mycompany.pojo.Company;
import com.mycompany.pojo.Location;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-22T13:51:49")
@StaticMetamodel(Street.class)
public class Street_ { 

    public static volatile SingularAttribute<Street, String> streetName;
    public static volatile SingularAttribute<Street, Company> companyId;
    public static volatile SingularAttribute<Street, Integer> id;
    public static volatile SingularAttribute<Street, Location> cityId;

}