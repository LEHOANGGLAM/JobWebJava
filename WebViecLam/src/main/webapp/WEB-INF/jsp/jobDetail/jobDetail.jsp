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
                            <a href="#">  <img class="img-fluid" src="<c:url value="${c.image}"/>" alt="alt"/></a>
                        </div>
                        <div class="job-tittle">
                            <a href="<c:url value="companyDetail/${job.id}"/>">
                                <h4>${job.jobTitle}</h4>
                            </a>
                            <ul>
                                <li>${c.companyName}</li>
                                <li><i class="fas fa-map-marker-alt"></i>${job.jobStreet}, ${l.city}</li>
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
                        <li>Location : <span>${l.city}</span></li>
                        <li>Vacancy : <span>${job.vacancy}</span></li>
                        <li>Job nature : <span>${job.jobNature}</span></li>
                        <li>Salary :  <span>$<fmt:formatNumber type = "number" 
                                          maxIntegerDigits = "9" value = "${job.jobMaxSalary*12}" /> yearly</span></li>
                        <li>Application date : <span>${job.expirationDate}</span></li>
                    </ul>
                    <div class="apply-btn2">
                        <a href="#" class="btn" style="margin-right: 20px">Apply Now</a>
                        <a href="#" class="btn head-btn2">Save</a>
                    </div>
                </div>
                <div class="post-details4  mb-50">
                    <!-- Small Section Tittle -->
                    <div class="small-section-tittle">
                        <h4>Company Information</h4>
                    </div>

                    <li >Name: <a href="#">${c.companyName} </a><b></b></li>
                    <br>
                    <li>Web : <b> ${c.companyWebsite}</b></li>
                    <br>
                    <li>Email: <b>${c.companyEmail}</b></li>
                    </ul>
                </div>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    Launch demo modal
                </button>

            </div>
        </div>
    </div>
</div>
<!-- job post company End -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<script>
    $('#myModal').on('shown.bs.modal', function () {
        $('#myInput').trigger('focus')
    })
</script>