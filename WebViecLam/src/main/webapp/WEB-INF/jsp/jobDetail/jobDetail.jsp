<%-- 
    Document   : jobDetail
    Created on : Jul 28, 2022, 4:26:01 PM
    Author     : dell
--%>
<%@include file="../../taglib.jsp"%>
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
                            <a href="${pageContext.request.contextPath}/companyDetail/${c.id}">  <img class="img-fluid" src="<c:url value="${c.image}"/>" alt="alt"/></a>
                        </div>
                        <div class="job-tittle">
                            <a href="${pageContext.request.contextPath}/companyDetail/${c.id}">
                                <h4>${job.jobTitle}</h4>
                            </a>
                            <ul>
                                <li>${c.companyName}</li>
                                <li><i class="fas fa-map-marker-alt"></i> ${job.jobStreetId.getStreetName()}, ${job.jobStreetId.getCityId().getCity()}</li>
                                <li>${job.jobMinSalary} - ${job.jobMaxSalary}$</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- job single End -->

                <div class="job-post-details">
                    <div class="post-details1 mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>Job Description</h4>
                        </div>
                        <p>${job.jobDescription}</p>
                    </div>
                    <div class="post-details2  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>Required Knowledge, Education, Skills, and Abilities</h4>
                        </div>
                        <p>${job.jobRequirement}</p>
                    </div>
                    <div class="post-details2  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>Individual Right</h4>
                        </div>
                        <p>${job.individualRight}</p>
                    </div>
                </div>

            </div>
            <!-- Right Content -->
            <div class="col-xl-4 col-lg-4">
                <div class="post-details3  mb-50">
                    <!-- Small Section Tittle -->
                    <div class="small-section-tittle">
                        <h4>Job Overview</h4>
                    </div>
                    <ul>
                        <li>Posted date : <span> <fmt:formatDate type="date" dateStyle = "short" 
                                        pattern="yyyy-MM-dd" value="${job.createdDate}" /></span></li>
                        <li>Location : <span> ${job.jobStreetId.getStreetName()}, ${job.jobStreetId.getCityId().getCity()}</span></li>
                        <li>Vacancy : <span>${job.vacancy}</span></li>
                        <li>Job nature : <span>${job.jobNature}</span></li>
                        <li>Salary :  <span>$<fmt:formatNumber type = "number" 
                                          maxIntegerDigits = "9" value = "${job.jobMaxSalary*12}" /> yearly</span></li>
                        <li>Application date : <span>${job.expirationDate}</span></li>
                    </ul>
                    <sec:authorize access="!isAuthenticated()">
                        <div class="apply-btn2">

                            <a href="${pageContext.request.contextPath}/login"class="btn" >Login to Apply</a>
                        </div>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <c:if test="${job.expirationDate >= d}">
                            <c:if test="${jobApplied == null || (jobApplied.isSave == 1) || (jobApplied.isSave == 0)}">
                                <div class="apply-btn2">



                                    <c:url value="/jobDetail/${job.id}" var="go"/>
                                    <form:form method="post" action="${go}" modelAttribute="a" 
                                               enctype="multipart/form-data">
                                        <a id="myBtn" class="btn" style="margin-right: 20px" >Apply Now</a>

                                        <form:input type="hidden"  path="isSave"  class="form-control" value="${jobApplied.isSave == 1 ? 0 : 1}" />
                                        <button class="btn head-btn2 btn-topcv-primary btn-theme" id="btn-save"
                                                type="submit" >
                                            ${jobApplied.isSave == 1 ? "Saved" : "Save"}
                                        </button>


                                    </form:form>


                                </div>
                            </c:if>
                            <c:if test="${jobApplied != null && jobApplied.isSave == -1}">
                                <div class="apply-btn2">

                                    <a id="myBtn" class="btn" style="margin-right: 20px" >Reapply</a>

                                    <a href="#" class="btn head-btn2">Send Message</a>
                                </div>
                            </c:if>
                        </c:if>
                        <c:if test="${job.expirationDate < d}">
                            <div class="apply-btn2">

                                <p class="btn" style="margin-right: 20px" >Out of date </a>

                            </div>
                        </c:if>
                    </sec:authorize>

                </div>
                <div class="post-details4  mb-50">
                    <!-- Small Section Tittle -->
                    <div class="small-section-tittle">
                        <h4>Company Information</h4>
                    </div>

                    <li >Name: <a href="${pageContext.request.contextPath}/companyDetail/${c.id}">${c.companyName} </a><b></b></li>
                    <br>
                    <li>Web : <b> <a href="${c.companyWebsite}">  Visit our Website</a></b></li>
                    <br>
                    <li>Email: <b>${c.companyEmail}</b></li>
                    </ul>
                </div>
                <form action="${pageContext.request.contextPath}/companyDetail/${c.id}">
                    <input  class="btn btn-primary" type="submit" value="View Company" />
                </form>

            </div>
        </div>
    </div>
</div>

<!-- The Modal -->
<div id="myModal" class="modal">

    <!-- Modal content -->
    <div class="modal-content">
        <c:url value="/jobDetail/${job.id}" var="action"/>
        <form:form method="post" action="${action}" id="form-apply-cv" modelAttribute="a" enctype="multipart/form-data">
            <div>


                <form:input type="hidden"  path="isSave"  class="form-control" value="-1" />

                <div class="modal-header ">

                    <h4 class="modal-title bold">Apply <span class="text-highlight">${job.jobTitle}</span></h4>

                </div>
                <div class="modal-body">
                    <div id="old-apply" style="display: block;">

                        <div style="margin-top: 8px; border: 1px dashed #ccc; padding: 5px 10px;">
                            <table>
                                <tbody><tr>
                                        <th>CV</th>
                                        <td style="padding-left: 5px">: <a href="${currentUser.getCv()}" target="blank" class="text-highlight">${currentUser.getCv()} <small><i>(Click to watch)</i></small></a></td>
                                    </tr>
                                    <tr>
                                        <th>Họ và tên</th>
                                        <td style="vertical-align: top; padding-left: 5px;">: 
                                            ${pageContext.session.getAttribute("currentUser").firstName}
                                            ${pageContext.session.getAttribute("currentUser").lastName}
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Email</th>
                                        <td style="vertical-align: top; padding-left: 5px;">: ${currentUser.getEmail()}</td>
                                    </tr>
                                    <tr>
                                        <th>Phone</th>
                                        <td style="vertical-align: top; padding-left: 5px;">: ${currentUser.getContactNumber()}</td>
                                    </tr>
                                </tbody></table>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn head-btn2" data-dismiss="modal" id="close">Close</button>
                            <button type="submit" class="btn btn-topcv-primary btn-theme" id="btn-apply">Apply CV</button>
                        </div>
                    </div>
                    <!--                    <div id="sucess-apply" style="display: block;">
                    
                                            <div style="margin-top: 8px; border: 1px dashed #ccc; padding: 5px 10px;">
                    
                    <c:if test="${errMsg!=null}">
                        <div class="notification notice margin-bottom-25">${errMsg}</div>
                    </c:if>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn head-btn2" data-dismiss="modal" id="close">Close</button>
                    <a href="" class="btn" style="margin-right: 20px" >Review Job Applied</a>

                </div>
            </div>-->
                </div>
            </div>
        </form:form>

    </div>

</div>

<%@include file="../home/_howItWork.jsp"%>
<section class="featured-job-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <h2 style="padding-top: 40px;">   Recently posted jobs</h2>

                </div>
            </div>
        </div>
        <%@include file="../jobList/_listing.jsp"%>
    </div>

</section>
<script>
    // Get the modal
    var modal = document.getElementById("myModal");

// Get the button that opens the modal
    var btn = document.getElementById("myBtn");



    // Get the button that opens the modal
    var btnClose = document.getElementById("close");



// When the user clicks on the button, open the modal
    btn.onclick = function () {
        modal.style.display = "block";
    }



// When the user clicks on <span> (x), close the modal
    btnClose.onclick = function () {
        modal.style.display = "none";
    }



// When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }


    function updateSave() {

        fetch(window.location.href, {
            method: "put",
            body: JSON.stringify({

            }),

        }).then(function (res) {
            return res.json()
        }).then(function (data) {

        })
    }


</script>

