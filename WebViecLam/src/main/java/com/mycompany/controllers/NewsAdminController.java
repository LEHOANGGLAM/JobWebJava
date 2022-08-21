/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mycompany.pojo.Category;
import com.mycompany.pojo.New1;
import com.mycompany.service.CateService;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author dell
 */
@Controller
@ControllerAdvice
@RequestMapping("/admin")
public class NewsAdminController {

    @Autowired
    private Cloudinary cloudinary;

    @GetMapping("/news")
    public String news(Model model) {
        model.addAttribute("news", new New1());
        return "news";
    }

    

    @PostMapping("news")
    public String addNew(@ModelAttribute(value = "news") New1 n) {
       
        try {
            Map r = this.cloudinary.uploader().upload(n.getFile(),
                    ObjectUtils.asMap("resource_type", "auto"));

            String img = (String) r.get("secure_url");
            //Phuong thuc tao news moi,
            return "news";
        } catch (IOException ex) {
            System.err.println("----------ADD NEWS-------- : "+ ex.getMessage() );
        }
        return "news";
    }
}
