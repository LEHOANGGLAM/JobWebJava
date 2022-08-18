<%-- 
    Document   : home
    Created on : Aug 17, 2022, 12:59:10 AM
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
                    <h1>Company Dashboard</h1>  
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs">
                        <ul>
                            <li><a href="#">Home &gt;</a></li>
                            <li>Dashboard</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <div class="notification notice margin-bottom-25">Companies can be edited or removed below.</div>
        <c:if test="${errMsg!=null}">
            <div class="notification notice margin-bottom-25">${errMsg}</div>
        </c:if>
        <div class="dashboard-list-box margin-top-30" id="job-manager-job-dashboard">
            <div class="dashboard-list-box-content">
                <table class="table manage-table responsive-table">
                    <thead class="thead-dark">
                        <tr>
                            <th class="company-title">Name</th>
                            <th class="status">Status</th>
                            <th class="date">Registered Date</th>
                            <th class="company-title">Company Website</th>
                            <th></th> 
                        </tr>
                    </thead>
                    <tbody id="mainId">

                    </tbody> 
                </table>
            </div>
        </div>

        <a class="btn head-btn1" href="#">Add Company</a>	

    </div>
</div>

<script src="<c:url value="/js/myjs.js" />"></script>
<script>
    <c:url value="/api/companies" var="u" />
    window.onload = function () {
        loadAdminCompany("${u}")
    }

</script>


