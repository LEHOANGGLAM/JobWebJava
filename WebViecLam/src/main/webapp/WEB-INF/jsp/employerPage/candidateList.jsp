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
                        <h2 style="padding-top: 50px">Applicants ${j.jobTitle} - ${j.id}</h2>
                    </c:if>
                    <c:if test="${j == null}">
                        <h2 style="padding-top: 50px">Applicants</h2>
                    </c:if>

                </div>
            </div>
        </div>
        <c:if test="${u.size() == 0}">
            <p>
                <em style="font-size: 50px;">No job found</em>
            </p>
        </c:if>
        <!-- single-job-content -->
        <c:forEach items="${u}" var="u" varStatus="loop">

            <div class="single-job-items mb-30">
                <div class="job-items">
                    <div class="company-img">
                        <a href="">  <img class="img-fluid" src="<c:url value=" ${u.lastName} "/>" alt="avatar"/></a>
                    </div>
                    <div class="job-tittle job-tittle2">

                        <a href="">
                            <h4>${u.firstName} ${u.lastName} </h4>
                        </a>
                        <ul>
                            <li> ${u.lastName} </li>
                            <li><i class="fas fa-map-marker-alt"></i> ${u.lastName} ,  ${u.lastName} </li>
                            <li> ${u.lastName} </li>                                                                               
                        </ul>
                    </div>
                </div>
                <sec:authorize access="isAuthenticated()">
                    <div class="items-link items-link2 f-right">
                        <a href=" ${u.lastName} ">Watch</a>

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

