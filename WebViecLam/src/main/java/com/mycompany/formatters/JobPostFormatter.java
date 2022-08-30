/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.formatters;

import com.mycompany.pojo.JobPost;
import com.mycompany.pojo.Street;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author dell
 */
public class JobPostFormatter implements Formatter<JobPost> {

    @Override
    public String print(JobPost t, Locale locale) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public JobPost parse(String string, Locale locale) throws ParseException {
        JobPost c = new JobPost();
        //c.setJobStreetId(Integer.parseInt(Street ()));
        
        return c;
    }
    
}
