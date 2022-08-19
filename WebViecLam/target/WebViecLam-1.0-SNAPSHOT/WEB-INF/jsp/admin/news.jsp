<%-- 
    Document   : news
    Created on : Aug 19, 2022, 5:14:52 AM
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
                    <h1>News Dashboard</h1>  

                </div>
            </div>
        </div>
        <c:url value="/admin/news" var="action">
        <form:form method="post" action="${action}" modelAttribute="news" enctype="multipart/form-data">
            <div class="form-group">
                <label for="file">Ảnh New</label>
                <form:input type="file" id="image" path="file" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="Add New" class="btn btn-danger"/>
            </div>
        </form:form>

        <div class="notification notice margin-bottom-25">Categories can be edited or removed below,
            after update reload to make sure everything is correct.</div>
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


    </div>
</div>