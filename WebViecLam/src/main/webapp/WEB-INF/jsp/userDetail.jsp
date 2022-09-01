
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
                            <a href="#">  <img class="img-fluid" src="<c:url value="${u.userImage}"/>" alt="alt"/></a>
                        </div>
                        <div class="job-tittle">
                            <a href="#">
                                <h4>${u.firstName} ,${u.lastName} </h4>
                            </a>
                            <ul>
                                <li> <a href="${u.firstName} ,${u.lastName}">  Visit our Website</a></li>
                             
                              
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
                        <p>${u.firstName} ,${u.lastName}</p>
                    </div>

                </div>

            </div>
          


        </div>

    </div>
</div>
<!-- single-job-content -->
