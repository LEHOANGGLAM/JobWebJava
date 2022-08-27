<%-- 
    Document   : header
    Created on : Jul 27, 2022, 2:44:43 AM
    Author     : dell
--%>
<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>
    <!-- Header Start -->
    <div class="header-area header-transparrent">
        <div class="headder-top header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-2">
                        <!-- Logo -->
                        <div class="logo">
                            <c:url value="/img/logo/logo.png" var="img"/>
                            <a href="/WebViecLam"><img src="${img}" alt="logo"> WorkFun</a>
                        </div>  
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <div class="menu-wrapper">
                            <!-- Main-menu -->
                            <div class="main-menu">
                                <nav class="d-none d-lg-block">
                                    <ul id="navigation">


                                        <sec:authorize access="!isAuthenticated()">
                                               <li><a href="<c:url value="/about"/>">About Us</a></li>     
                                                 <li><a href="<c:url value="/contact"/>">Contact Us</a></li>     
                                        </sec:authorize>
                                        <!--                                            JOBSEEKER---------------->
                                        <c:if test="${currentUser.getUserTypeId().getId() == 2}">
                                            <c:forEach items="${cate}" var="cate" varStatus="loop">
                                                <c:if test="${(cate.userTypeId.getId() == 2 || cate.userTypeId.getId() == 4) && cate.parentCateId == 0}">
                                                    <li><a href="${pageContext.request.contextPath}/${cate.linkCate}">${cate.categoryName}</a>


                                                        <c:forEach items="${cateChild}" var="a">
                                                            <c:if test="${a.parentCateId == cate.id}"> 

                                                                <ul class="submenu">
                                                                    <c:forEach items="${cateChild}" var="cateChild">
                                                                        <c:if test="${cateChild.parentCateId == cate.id}">    

                                                                            <li><a href="${pageContext.request.contextPath}/${cateChild.linkCate}">${cateChild.categoryName}</a></li>                                                       

                                                                        </c:if>
                                                                    </c:forEach>
                                                                </ul>

                                                            </c:if>
                                                        </c:forEach>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                        </c:if>


                                        <c:if test="${currentUser.getUserTypeId().getId() == 3}">
                                            <c:forEach items="${cate}" var="cate" varStatus="loop">
                                                <c:if test="${(cate.userTypeId.getId() == 3 || cate.userTypeId.getId() == 4) && cate.parentCateId == 0}">
                                                    <li><a href="${pageContext.request.contextPath}/${cate.linkCate}">${cate.categoryName}</a>


                                                        <c:forEach items="${cateChild}" var="a">
                                                            <c:if test="${a.parentCateId == cate.id}"> 

                                                                <ul class="submenu">
                                                                    <c:forEach items="${cateChild}" var="cateChild">
                                                                        <c:if test="${cateChild.parentCateId == cate.id}">    

                                                                               <li><a href="${pageContext.request.contextPath}/${cateChild.linkCate}">${cateChild.categoryName}</a></li>                                                       

                                                                        </c:if>
                                                                    </c:forEach>
                                                                </ul>

                                                            </c:if>
                                                        </c:forEach>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                        </c:if>


                                        <c:if test="${currentUser.getUserTypeId().getId() == 1}">
                                            <c:forEach items="${cate}" var="cate" varStatus="loop">
                                                <c:if test="${(cate.userTypeId.getId() == 1) && cate.parentCateId == 0}">
                                                    <li><a href="${pageContext.request.contextPath}/admin/${cate.linkCate}">${cate.categoryName}</a>


                                                        <c:forEach items="${cateChild}" var="a">
                                                            <c:if test="${a.parentCateId == cate.id}"> 

                                                                <ul class="submenu">
                                                                    <c:forEach items="${cateChild}" var="cateChild">
                                                                        <c:if test="${cateChild.parentCateId == cate.id}">    

                                                                              <li><a href="${pageContext.request.contextPath}/admin/${cateChild.linkCate}">${cateChild.categoryName}</a></li>                                                       

                                                                        </c:if>
                                                                    </c:forEach>
                                                                </ul>

                                                            </c:if>
                                                        </c:forEach>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                        </c:if>
                                    </ul>
                                </nav>
                            </div>          
                            <!-- Header-btn -->

                            <sec:authorize access="!isAuthenticated()">
                                <div class="header-btn d-none f-right d-lg-block">
                                    <a href="<c:url value="/register"/>" class="btn head-btn1">Register</a>

                                    <a href="<c:url value="/login"/>" class="btn head-btn2">Login</a>


                                </div>
                            </sec:authorize>


                            <sec:authorize access="isAuthenticated()">
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                    <div class="main-menu">
                                        <nav class="d-none d-lg-block">
                                            <ul>

                                                <li><a href="<c:url value="/"/>" class="btn head-btn2">

                                                        <c:if test="${currentUser.getUserImage() == null || currentUser.getUserImage().isEmpty()}">
                                                            <c:url value="/img/default_ava.jpg" var="imgLink"/>
                                                            <img class = "ava" style=""src="${imgLink}" class="" alt="null">
                                                        </c:if>
                                                        <c:if test="${currentUser.getUserImage() != null && !currentUser.getUserImage().isEmpty()}">
                                                            <img class = "ava" style=""src="${currentUser.getUserImage()}"alt="">
                                                        </c:if>

                                                        ${pageContext.session.getAttribute("currentUser").firstName}
                                                        ${pageContext.session.getAttribute("currentUser").lastName}

                                                    </a>
                                                    <ul class="submenu">

                                                        <li><a href="<c:url value="/" />">Messenger</a>   </li>
                                                        <li id="${uId}"><a href="<c:url value="/myProfile/${uId}" />">My Profile</a>   </li>
                                                        <li><a href="<c:url value="/logout" />">Logout</a>   </li>

                                                    </ul>

                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </c:if>


                            </sec:authorize>

                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>


