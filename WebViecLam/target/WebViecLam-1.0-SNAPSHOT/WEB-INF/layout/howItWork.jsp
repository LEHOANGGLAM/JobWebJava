<%-- 
    Document   : howItWork
    Created on : Jul 28, 2022, 4:34:28 AM
    Author     : dell
--%>
<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!-- How  Apply Process Start-->
<c:url value="/img/gallery/how-applybg.png" var="img"/>
<div class="apply-process-area apply-bg pt-150 pb-150" data-background="${img}">
    <div class="container">
        <!-- Section Tittle -->
        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle white-text text-center">
                    <span>Apply process</span>
                    <h2> How it works</h2>
                </div>
            </div>
        </div>
        <!-- Apply Process Caption -->
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="single-process text-center mb-30">
                    <div class="process-ion">
                        <span class="flaticon-search"></span>
                    </div>
                    <div class="process-cap">
                        <h5>1. Search a job</h5>
                        <p>Find a job you love</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-process text-center mb-30">
                    <div class="process-ion">
                        <span class="flaticon-curriculum-vitae"></span>
                    </div>
                    <div class="process-cap">
                        <h5>2. Apply for job</h5>
                        <p>Quick application</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-process text-center mb-30">
                    <div class="process-ion">
                        <span class="flaticon-tour"></span>
                    </div>
                    <div class="process-cap">
                        <h5>3. Get your job</h5>
                        <p>
                            Interview and get your job</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- How  Apply Process End-->