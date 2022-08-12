<%-- 
    Document   : 
    Created on : Jul 24, 2022, 3:25:42 PM
    Author     : admin
--%>
<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!-- Job List Area Start -->
<div class="job-listing-area pt-120 pb-120">
    <div class="container">
        <div class="row">
            <!-- Left content -->

            <%@include file="_filterJobs.jsp"%>
            <!-- Right content -->
            <div class="col-xl-9 col-lg-9 col-md-8">
                <!-- Featured_job_start -->
                <section class="featured-job-area">
                    <div class="container">
                        <!-- Count of Job list Start -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="count-job mb-35">    
                                   
                                    <span> <fmt:formatNumber type = "number" 
                                                      maxIntegerDigits = "3" value = "${jobCounter}" /> Jobs found</span>
                                    <!-- Select job items start -->
                                    <div class="select-job-items">
                                        <!--onsubmit="return addOrUpdateUrlParam('kw',this.value)"-->
                                        <form class="navbar-form navbar-left" action="${window.location.href}">
                                            <div class="input-group">
                                                <input name="kw" type="text"  
                                                       class="form-control" placeholder="Search...">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-default" type="submit">
                                                        <i class="flaticon-search"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <!--  Select job items End-->
                                </div>
                            </div>
                        </div>
                        <!-- Count of Job list End -->
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
                                        <a href="#"><img src="asd" alt=""></a>
                                    </div>
                                    <div class="job-tittle job-tittle2">
                                        <a href="#">
                                            <h4>${j[0]} </h4>
                                        </a>
                                        <ul>
                                            <li>${j[7]}</li>
                                            <li><i class="fas fa-map-marker-alt"></i>${j[5]}, ${j[6]}</li>
                                            <li>${j[1]} - ${j[2]}</li>                                                                               
                                        </ul>
                                    </div>
                                </div>
                                <div class="items-link items-link2 f-right">
                                    <a href="<c:url value="jobDetail"/>">Watch</a>
                                    <span>Expiration:  <fmt:formatDate type="date" dateStyle = "short" 
                                                    pattern="yyyy-MM-dd" value="${j[8]}" /></span>
                                </div>
                            </div>


                        </c:forEach>
                    </div>
                </section>
                <!-- Featured_job_end -->
            </div>
        </div>
    </div>
</div>
<!-- Job List Area End -->
<!--Pagination Start  -->
<div class="pagination-area pb-115 text-center">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="single-wrap d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-start">
                            <c:forEach begin="1" end="${Math.ceil(jobCounter/pageSize)}" var="i">
                                <c:url value="/joblist" var="u">
                                    <c:param name="page" value="${i}"></c:param>
                                </c:url>
                                <li class="page-item ${tagPage == i ? "active":""}">                            
                                    <a class="page-link" href="${u}">${i}</a>
                                </li>                          
                            </c:forEach>   

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Pagination End  -->
<script>
    function addOrUpdateUrlParam(name, value)
    {
        var href = window.location.href;
        var regex = new RegExp("[&\\?]" + name + "=");
        if (regex.test(href))
        {
            regex = new RegExp("([&\\?])" + name + "=\\d+");
            window.location.href = href.replace(regex, "$1" + name + "=" + value);
        } else
        {
            if (href.indexOf("?") > -1)
                window.location.href = href + "&" + name + "=" + value;
            else
                window.location.href = href + "?" + name + "=" + value;
        }
    }
</script>