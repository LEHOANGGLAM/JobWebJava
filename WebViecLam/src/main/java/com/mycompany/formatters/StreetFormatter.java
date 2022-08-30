/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.formatters;

import com.mycompany.pojo.Street;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author dell
 */
public class StreetFormatter  implements Formatter<Street> {

    @Override
    public String print(Street t, Locale locale) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Street parse(String string, Locale locale) throws ParseException {
        Street c = new Street();
        c.setId(Integer.parseInt(string));
        
        return c;
    }
    
}
