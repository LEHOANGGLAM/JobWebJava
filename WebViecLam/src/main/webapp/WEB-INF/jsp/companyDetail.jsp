<%-- 
    Document   : jobDetail
    Created on : Jul 28, 2022, 4:26:01 PM
    Author     : dell
--%>

<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- job post company Start -->
<div class="job-post-company pt-120 pb-120">
    <div class="container">
        <div class="row justify-content-between">
            <!-- Left Content -->
            <div class="col-xl-7 col-lg-8">
                <!-- job single -->
                <div class="single-job-items mb-50">
                    <div class="job-items">
                        <div class="company-img">
                            <a href="#">  <img class="img-fluid" src="<c:url value="${c.image}"/>" alt="alt"/></a>
                        </div>
                        <div class="job-tittle">
                            <a href="#">
                                <h4>${c.companyName}</h4>
                            </a>
                            <ul>
                                <li> <a href="${c.companyWebsite}">  Visit our Website</a></li>
                                <li><i class="flaticon-email"></i>Email: ${c.companyEmail}</li>
                                <li>Company size: <fmt:formatNumber type = "number" 
                                                  maxIntegerDigits = "12" value = "${c.companySize}" /> </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- job single End -->

                <div class="job-post-details">
                    <div class="post-details1 mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>About Us</h4>
                        </div>
                        <p>${c.aboutCompany}</p>
                    </div>

                </div>

            </div>
            <!-- Right Content -->
            <div class="col-xl-4 col-lg-4">
                <div class="post-details3  mb-50">
                    <!-- Small Section Tittle -->
                    <div class="small-section-tittle">
                        <h4>Company Overview</h4>
                    </div>
                    <ul>
                        <li>Created date : <span> <fmt:formatDate type="date" dateStyle = "short" 
                                        pattern="yyyy-MM-dd" value="${c.createdDate}" /></span></li>
                        <li>Location (${l.size()}) :
                            <c:forEach items="${l}" var="l" varStatus="loop">
                                <c:if test="${loop.index <5}">
                                <li>-  ${l.streetName}, ${l.cityId.getCity()}</li>
                                </c:if>
                            </c:forEach>

                        </li>

                    </ul>
                    <div class="apply-btn2">
                        <a href="${c.companyWebsite}" class="btn">  See more agency</a>

                    </div>
                </div>


            </div>
        </div>

    </div>
</div>
<!-- single-job-content -->

<section class="featured-job-area">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <h2 style="margin-top: 50px">   Recently posted jobs</h2>

                </div>
            </div>
        </div>


        <%@include file="jobList/_listing.jsp"%>
        
    </div>
</section>
<!--    comment section-->
<section>
    <div class="container">
        <div class="row">

            <%@include file="comment/comment.jsp"%>
        </div>
</section>