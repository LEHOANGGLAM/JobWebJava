<%-- 
    Document   : jobPostApplied
    Created on : Aug 28, 2022, 1:08:27 AM
    Author     : dell
--%>

<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<section class="featured-job-area">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">

                    <h2 style="padding-top: 50px">Applied Job</h2>
                </div>
            </div>
        </div>
        <c:if test="${jobApplied.size() == 0}">
            <p>
                <em style="font-size: 50px;">No job found</em>
            </p>
        </c:if>
        <!-- single-job-content -->
        <c:forEach items="${jobApplied}" var="j" varStatus="loop">

            <div class="single-job-items mb-30">
                <div class="job-items">
                    <div class="company-img">
                        <a href="jobDetail/${j.id}">  <img class="img-fluid" src="<c:url value="${j.companyId.getImage()}"/>" alt="alt"/></a>
                    </div>
                    <div class="job-tittle job-tittle2">

                        <a href="jobDetail/${j.id}">
                            <h4>${j.jobTitle} </h4>
                        </a>
                        <ul>
                            <li>${j.companyId.getCompanyName()}</li>
                            <li><i class="fas fa-map-marker-alt"></i>${j.jobStreet}, ${j.jobLocationId.getCity()}</li>
                            <li>${j.jobMinSalary} -  ${j.jobMaxSalary}$</li>                                                                               
                        </ul>
                    </div>
                </div>
                <sec:authorize access="isAuthenticated()">
                    <div class="items-link items-link2 f-right">
                        <a href="jobDetail/${j.id}">Watch</a>
                        <!--                <span>Expiration:  <fmt:formatDate type="date" dateStyle = "short" 
                                        pattern="yyyy-MM-dd" value="${j.expirationDate}" />
                        </span>-->

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

<section class="featured-job-area">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">

                    <h2 style="padding-top: 50px">Saved Job</h2>
                </div>
            </div>
        </div>
        <c:if test="${jobSave.size() == 0}">
            <p>
                <em style="font-size: 50px;">No job found</em>
            </p>
        </c:if>
        <!-- single-job-content -->
        <c:forEach items="${jobSave}" var="j" varStatus="loop">

            <div class="single-job-items mb-30">
                <div class="job-items">
                    <div class="company-img">
                        <a href="jobDetail/${j.id}">  <img class="img-fluid" src="<c:url value="${j.companyId.getImage()}"/>" alt="alt"/></a>
                    </div>
                    <div class="job-tittle job-tittle2">

                        <a href="jobDetail/${j.id}">
                            <h4>${j.jobTitle} </h4>
                        </a>
                        <ul>
                            <li>${j.companyId.getCompanyName()}</li>
                            <li><i class="fas fa-map-marker-alt"></i>${j.jobStreet}, ${j.jobLocationId.getCity()}</li>
                            <li>${j.jobMinSalary} -  ${j.jobMaxSalary}$</li>                                                                               
                        </ul>
                    </div>
                </div>
                <sec:authorize access="isAuthenticated()">
                    <div class="items-link items-link2 f-right">
                        <a href="jobDetail/${j.id}">Watch</a>
                        <!--                <span>Expiration:  <fmt:formatDate type="date" dateStyle = "short" 
                                        pattern="yyyy-MM-dd" value="${j.expirationDate}" />
                        </span>-->

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

<%@include file="home/_howItWork.jsp"%>
<section class="featured-job-area">
    <div class="container">
     
        <%@include file="home/_topCate.jsp"%>
    </div>

</section>