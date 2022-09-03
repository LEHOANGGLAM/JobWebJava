
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
                            <a href="">   <c:if test="${u.userImage == null || u.userImage.isEmpty()}">
                                    <c:url value="/img/default_ava.jpg" var="imgLink"/>
                                    <img class = "ava" style=""src="${imgLink}" class="" alt="null">
                                </c:if>
                                <c:if test="${u.userImage != null && !u.userImage.isEmpty()}">
                                    <img class="img-fluid" style=""src="${u.userImage}"alt="">
                                </c:if></a>
                        </div>
                        <div class="job-tittle">

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
                </div>
                <!-- job single End -->

                <div class="job-post-details">
                    <div class="post-details1 mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>About Me</h4>
                        </div>
                        <p>${u.aboutMe}</p>
                    </div>

                </div>

            </div>


<!--             Right Content 
            <div class="col-xl-4 col-lg-4">
                <div class="post-details3  mb-50">
                     Small Section Tittle 
                    <div class="small-section-tittle">
                        <h4>My CV</h4>
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


            </div>-->
        </div>

    </div>
</div>
<!-- single-job-content -->
