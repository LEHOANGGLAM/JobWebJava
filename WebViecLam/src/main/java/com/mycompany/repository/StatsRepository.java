/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.repository;

import java.util.Date;
import java.util.List;

/**
 *
 * @author dell
 */
public interface StatsRepository {
    List<Object[]> applicationStats(int quarter,int year);
    List<Object[]>  applicationStatsAccordingToDate(String kw,Date fromDate, Date toDate);
}
