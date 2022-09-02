<%-- 
    Document   : applicationStats
    Created on : Aug 23, 2022, 12:46:58 AM
    Author     : dell
--%>
<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<div class="job-post-company pt-120 pb-120">
    <div class="container">

        <!-- Titlebar -->
        <div id="titlebar">
            <div class="row">
                <div class="col-md-12">
                    <h1>Application Stats</h1>  

                </div>
            </div>
        </div>

        <div class="notification notice margin-bottom-25">Companies can be edited or removed below,
            after update reload to make sure everything is correct.</div>

        <div class="dashboard-list-box margin-top-30" id="job-manager-job-dashboard">
            <div class="dashboard-list-box-content">
                <table class="table manage-table responsive-table">
                    <thead class="thead-dark">
                        <tr>
                            <th class="company-title">Id Job Type</th>
                            <th class="status">Name Job Type</th>
                            <th class="date">Number of applications</th>


                        </tr>
                    </thead>
                    <tbody >
                        <c:forEach items="${appStats}" var="a" varStatus="loop">

                            <tr>
                                <th class="company-title">${a[0].getId()}</th>
                                <th class="status">${a[0].getJobType()}</th>
                                <th class="date">${a[1]}</th>


                            </tr>

                        </c:forEach>
                    </tbody> 
                </table>
            </div>

        </div>
        <div class="row">
            <!-- Left content -->
            <!-- Select job items start -->

            <div class="select-job-items">
                <label for="quarter" class="form-label"  style="display: inline-block;">Quarter:</label>
                <c:url value="/admin/stats" var="action" />
                <form action="${action}">





                    <select  style="display: inline-flex;
                             "  class="form-control" id="quarter" placeholder="Enter quarter" name="quarter" >
                        <c:forEach begin="0" end="4" var="i">

                            <option value="${i}" ${tagQuarter == i ? "selected":""}>${i == 0 ? "All" : i}</option>
                        </c:forEach>
                    </select>

                    <div class="clearfix">

                    </div>
                    <div class="mb-3">
                        <label for="year" class="form-label" style="padding: 10px">Year:</label>
                        <input type="number" class="form-control" id="year" placeholder="Enter year" name="year"
                               style="display: inline-block; width: 200px" value="${tagYear}">
                    </div>

                    <button type="submit" class="btn btn-primary">Search</button>
                </form>
            </div>


            <!-- Right content -->
            <div class="col-xl-9 col-lg-9 col-md-8">
                <!-- Featured_job_start -->
                <section class="featured-job-area">
                    <div class="container">
                        <div>
                            <canvas id="myChart"></canvas>
                        </div>
                    </div>
                </section>
                <!-- Featured_job_end -->
            </div>
        </div>


    </div>
</div>


<script>
    window.onload = function () {
        let data = [];
        let labels = [];

    <c:forEach items="${appStats}" var="a">
        data.push(${a[1]});
        labels.push('${a[0].getJobType()}');
    </c:forEach>

        jobTypeChart(data, labels);

    }
</script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="<c:url value="/js/chartjs.js" />"></script>