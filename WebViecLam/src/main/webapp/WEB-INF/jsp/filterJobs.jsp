<%-- 
    Document   : filterJobs
    Created on : Jul 28, 2022, 4:48:21 PM
    Author     : dell
--%>
<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="col-xl-3 col-lg-3 col-md-4">
    <div class="row">
        <div class="col-12">
            <div class="small-section-tittle2 mb-45">
                <div class="ion"> <svg 
                        xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink"
                        width="20px" height="12px">
                        <path fill-rule="evenodd"  fill="rgb(27, 207, 107)"
                              d="M7.778,12.000 L12.222,12.000 L12.222,10.000 L7.778,10.000 L7.778,12.000 ZM-0.000,-0.000 L-0.000,2.000 L20.000,2.000 L20.000,-0.000 L-0.000,-0.000 ZM3.333,7.000 L16.667,7.000 L16.667,5.000 L3.333,5.000 L3.333,7.000 Z"/>
                    </svg>
                </div>
                <h4>Filter Jobs</h4>
            </div>
        </div>
    </div>
    <!-- Job Category Listing start -->
    <div class="job-category-listing mb-50">
        <!-- single one -->
        <div class="single-listing">
            <div class="small-section-tittle2">
                <h4>Job Category</h4>
            </div>
            <!-- Select job items start -->
            <div class="select-job-items2">
              
                <select onchange="return addOrUpdateUrlParam('jobTypeId',this.value)" name="select">
                    <option value="">All Category</option>                 
                    <c:forEach items="${getJobTypes}" var="jT">
                        <option value="${jT.id}">${jT.jobType}</option>
                    </c:forEach>
                </select>
            </div>
            <!--  Select job items End-->
            <!-- select-Categories start -->
            <div class="select-Categories pt-80 pb-50">
                <div class="small-section-tittle2">
                    <h4>Posted Within</h4>
                </div>
                <label class="container">Any
                    <input type="checkbox" >
                        <span class="checkmark"></span>
                </label>
                <label class="container">Today
                    <input type="checkbox" checked="checked active">
                        <span class="checkmark"></span>
                </label>
                <label class="container">Last 2 days
                    <input type="checkbox">
                        <span class="checkmark"></span>
                </label>
           
            </div>
        </div>
        <!-- single two -->
        <div class="single-listing">
            <div class="small-section-tittle2">
                <h4>Job Location</h4>
            </div>
            <!-- Select job items start -->
            <div class="select-job-items2">
             
                <select onchange="return addOrUpdateUrlParam('jobLocationId',this.value)" name="select">
                    <option value="">Anywhere</option>                 
                    <c:forEach items="${getJobLocations}" var="jL">
                        <option value="${jL.id}">${jL.city}</option>
                    </c:forEach>
                </select>
            </div>
            <!--  Select job items End-->
            <!-- select-Categories start -->
            <div class="select-Categories pt-80 pb-50">
                <div class="small-section-tittle2">
                    <h4>Experience</h4>
                </div>
                <label class="container">1-2 Years
                    <input type="checkbox" >
                        <span class="checkmark"></span>
                </label>
                <label class="container">2-3 Years
                    <input type="checkbox" checked="checked active">
                        <span class="checkmark"></span>
                </label>
                <label class="container">3-6 Years
                    <input type="checkbox">
                        <span class="checkmark"></span>
                </label>
                <label class="container">6-more..
                    <input type="checkbox">
                        <span class="checkmark"></span>
                </label>
            </div>
            <!-- select-Categories End -->
        </div>
        <!-- single three -->
        <div class="single-listing">
           
            <!-- select-Categories End -->
        </div>
        <div class="single-listing">
            <!-- Range Slider Start -->
            <aside class="left_widgets p_filter_widgets price_rangs_aside sidebar_box_shadow">
                <div class="small-section-tittle2">
                    <h4>Filter Jobs</h4>
                </div>
                <div class="widgets_inner">
                    <div class="range_item">
                        <!-- <div id="slider-range"></div> -->
                        <input type="text" class="js-range-slider" value="" />
                        <div class="d-flex align-items-center">
                            <div class="price_text">
                                <p>Price :</p>
                            </div>
                            <div class="price_value d-flex justify-content-center">
                                <input type="text" class="js-input-from" id="amount" readonly />
                                <span>to</span>
                                <input type="text" class="js-input-to" id="amount" readonly />
                            </div>
                        </div>
                    </div>
                </div>
            </aside>
            <!-- Range Slider End -->
        </div>
    </div>
    <!-- Job Category Listing End -->
</div>
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