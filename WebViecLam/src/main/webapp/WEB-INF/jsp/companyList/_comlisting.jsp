<%-- 
    Document   : _comlisting
    Created on : Aug 28, 2022, 3:25:28 AM
    Author     : dell
--%>
<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:if test="${com.size() == 0}">
    <p>
        <em style="font-size: 50px;">No Company found</em>
    </p>
</c:if>
<!-- single-job-content -->
<c:forEach items="${com}" var="c" varStatus="loop">

    <div class="single-job-items mb-30">
        <div class="job-items">
            <div class="company-img">
                <a href="companyDetail/${c.id}">  <img class="img-fluid" src="<c:url value="${c.image}"/>" alt="alt"/></a>
            </div>
            <div class="job-tittle job-tittle2">

                <a href="companyDetail/${c.id}">
                    <h4>${c.companyName} </h4>
                </a>
                <ul>
                    <li>${c.businessTypeId.getBusinessTypeName()}</li>
                    <li>      <a href="${c.companyWebsite}"> Visit Website</a> </li>
                    <li>Size: ${c.companySize} <i class="fas fa-user-alt"></i></li>                                                                               
                </ul>
            </div>
        </div>

        <div class="items-link items-link2 f-right">
            <a href="companyDetail/${c.id}">Watch</a>
         

        </div>

    </div>


</c:forEach>