<%-- 
    Document   : applicationStats
    Created on : Aug 23, 2022, 12:46:58 AM
    Author     : dell
--%>
<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:forEach items="${cate}" var="cate" varStatus="loop">
    <c:if test="${cate.userTypeId.getId() == 1}">
        <li><a href="<c:url value="${cate.linkCate}"/>">${cate.categoryName}</a></li>
        </c:if>
    </c:forEach>


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

        <div>
            <canvas id="myChart"></canvas>
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