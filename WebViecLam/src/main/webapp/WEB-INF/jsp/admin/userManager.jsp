<%-- 
    Document   : userManger
    Created on : Sep 3, 2022, 4:57:37 AM
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
                    <h1>User Dashboard</h1>  

                </div>
            </div>
        </div>

        <div class="notification notice margin-bottom-25">User can be edited or removed below, after update reload to make sure everything is correct.</div>
        <c:if test="${errMsg!=null}">
            <div class="notification notice margin-bottom-25">${errMsg}</div>
        </c:if>
        <div class="dashboard-list-box margin-top-30" id="job-manager-job-dashboard">
            <div class="dashboard-list-box-content">
                <table class="table manage-table responsive-table">
                    <thead class="thead-dark">
                        <tr>
                            <th class="company-title">Username</th>
                            <th class="status">Name </th>
                            <th class="date">Date Of Birth</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody id="mainId">

                    </tbody> 
                </table>
                <a class="btn btn-topcv-primary btn-theme" style="margin-top: 20px" href="<c:url value="/admin/addUserAdmin"/>">
                    Add New Account
                </a>
            </div>
        </div>


    </div>
</div>

<script src="<c:url value="/js/myjs.js" />"></script>
<script>
    <c:url value="/admin/api/accountsAdmin" var="u" />
    window.onload = function () {
        loadUserAdmin("${u}")
    }

</script>


