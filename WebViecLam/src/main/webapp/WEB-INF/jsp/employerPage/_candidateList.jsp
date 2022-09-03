<%-- 
    Document   : candidateList
    Created on : Aug 29, 2022, 1:21:15 AM
    Author     : dell
--%>

<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<section class="featured-job-area">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <c:if test="${j  != null}">
                        <h2 style="padding-top: 50px">Applicants Of ${j.jobTitle} - Id: ${j.id}</h2>
                    </c:if>
                    <c:if test="${j == null}">
                        <h2 style="padding-top: 50px">Applicants</h2>
                    </c:if>

                </div>
            </div>
        </div>
        <c:if test="${u.size() == 0}">
            <p>
                <em style="font-size: 50px;">No candidate found</em>
            </p>
        </c:if>
        <!-- single-job-content -->
        <c:forEach items="${u}" var="u" varStatus="loop">

            <div class="single-job-items mb-30">
                <div class="job-items">
                    <div class="company-img">


                        <a href="">   <c:if test="${u.userImage == null || u.userImage.isEmpty()}">
                                <c:url value="/img/default_ava.jpg" var="imgLink"/>
                                <img class = "ava" style=""src="${imgLink}" class="" alt="null">
                            </c:if>
                            <c:if test="${u.userImage != null && !u.userImage.isEmpty()}">
                                <img class="img-fluid" style=""src="${u.userImage}"alt="">
                            </c:if></a>
                    </div>
                    <div class="job-tittle job-tittle2">

                        <a href="">
                            <h4>${u.firstName} ${u.lastName} </h4>
                        </a>
                        <ul>
                            <li> <a href="${u.cv}">  Watch my CV</a></li>
                            <li> Date Of Birth: ${u.dateOfBirth}  </li>
                            <li> ${u.email} </li>                                                                               
                        </ul>
                    </div>
                </div>
                <sec:authorize access="isAuthenticated()">
                    <div class="items-link items-link2 f-right">
                        <a href="${pageContext.request.contextPath}/userDetail/${u.id} ">Watch</a>

                    </div>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <div class="items-link items-link2 f-right">
                        <a href="${pageContext.request.contextPath}/login" >Login to Watch More</a>

                    </div>
                </sec:authorize>

            </div>


        </c:forEach>
    </div>
</section>

