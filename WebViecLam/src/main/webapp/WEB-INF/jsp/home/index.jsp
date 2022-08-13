<%-- 
    Document   : index
    Created on : Jul 27, 2022, 2:24:21 AM
    Author     : dell
--%>
<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<main>
 
    <%@include file="_slide.jsp"%>
    <%@include file="_topCate.jsp"%>
    <%@include file="_upLoadCV.jsp"%>
   
    <section class="featured-job-area">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="section-tittle text-center">

                        <h2 style="padding-top: 50px">Recent Job</h2>
                    </div>
                </div>
            </div>
            <%@include file="../jobList/_listing.jsp"%>
            
        </div>
    </section>
    <!-- Featured_job_end -->
    <!-- Featured_job_end -->
    <%@include file="_howItWork.jsp"%>
    <%@include file="_forBussiness.jsp"%>


</main>
