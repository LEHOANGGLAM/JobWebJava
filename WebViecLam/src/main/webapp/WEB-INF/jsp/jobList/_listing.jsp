<%-- 
    Document   : _listing
    Created on : Aug 12, 2022, 11:20:05 PM
    Author     : dell
--%>

<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                <a href="jobDetail/${j.id}">  <img class="img-fluid" src="<c:url value="${j.companyId.getImage()}"/>" alt="alt"/></a>
            </div>
            <div class="job-tittle job-tittle2">

                <a href="jobDetail/${j.id}">
                    <h4>${j.jobTitle} </h4>
                </a>
                <ul>
                    <li>${j.companyId.getCompanyName()}</li>
                    <li><i class="fas fa-map-marker-alt"></i>${j.jobStreetId.getStreetName()}, ${j.jobStreetId.getCityId().getCity()}</li>
                    <li>${j.jobMinSalary} - ${j.jobMaxSalary}$</li>                                                                               
                </ul>
            </div>
        </div>
        <sec:authorize access="isAuthenticated()">
            <div class="items-link items-link2 f-right">
                <a href="jobDetail/${j.id}">Watch</a>
         
            </div>
        </sec:authorize>
        <sec:authorize access="!isAuthenticated()">
            <div class="items-link items-link2 f-right">
              <a href="${pageContext.request.contextPath}/login" >Login to Watch More</a>

            </div>
        </sec:authorize>

    </div>


</c:forEach>