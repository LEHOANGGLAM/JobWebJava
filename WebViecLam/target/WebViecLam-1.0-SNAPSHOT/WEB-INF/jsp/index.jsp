<%-- 
    Document   : index
    Created on : Jul 27, 2022, 2:24:21 AM
    Author     : dell
--%>
<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<main>

    <%@include file="../layout/slide.jsp"%>
    <%@include file="../layout/topCate.jsp"%>
    <%@include file="../layout/upLoadCV.jsp"%>
    <!-- Featured_job_start -->
    <div class="col-xl-9 col-lg-9 col-md-8">
        <!-- Featured_job_start -->
        <section class="featured-job-area">
            <div class="container">
                <!-- Count of Job list Start -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="count-job mb-35">    

                            <span> <fmt:formatNumber type = "number" 
                                              maxIntegerDigits = "3" value = "${jobCounter}" /> Jobs found</span>
                            <!-- Select job items start -->
                            <div class="select-job-items">
                                <!--onsubmit="return addOrUpdateUrlParam('kw',this.value)"-->
                                <form class="navbar-form navbar-left" action="${window.location.href}">
                                    <div class="input-group">
                                        <input name="kw" type="text"  
                                               class="form-control" placeholder="Search...">
                                        <div class="input-group-btn">
                                            <button class="btn btn-default" type="submit">
                                                <i class="flaticon-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!--  Select job items End-->
                        </div>
                    </div>
                </div>
                <!-- Count of Job list End -->
                <c:if test="${jobposts.size() == 0}">
                    <p>
                        <em style="font-size: 50px;">No job found</em>
                    </p>
                </c:if>
                <!-- single-job-content -->
                <c:forEach items="${jobposts}" var="j" varStatus="loop">

                    <div class="single-job-items mb-30">
                        <div class="job-items">
                            <div class="company-img">
                                <a href="#"><img src="asd" alt=""></a>
                            </div>
                            <div class="job-tittle job-tittle2">
                                <a href="#">
                                    <h4>${j[0]} </h4>
                                </a>
                                <ul>
                                    <li>${j[7]}</li>
                                    <li><i class="fas fa-map-marker-alt"></i>${j[5]}, ${j[6]}</li>
                                    <li>${j[1]} - ${j[2]}</li>                                                                               
                                </ul>
                            </div>
                        </div>
                        <div class="items-link items-link2 f-right">
                            <a href="job_details.html">Watch</a>
                            <span>Expiration:  <fmt:formatDate type="date" dateStyle = "short" 
                                            pattern="yyyy-MM-dd" value="${j[8]}" /></span>
                        </div>
                    </div>


                </c:forEach>
            </div>
        </section>
        <!-- Featured_job_end -->
    </div>
    <!-- Featured_job_end -->
    <%@include file="../layout/howItWork.jsp"%>
    <%@include file="../layout/forBussiness.jsp"%>


</main>
