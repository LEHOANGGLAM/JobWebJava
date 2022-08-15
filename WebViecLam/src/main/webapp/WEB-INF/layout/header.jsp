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
                                        <li><a href="/WebViecLam">Home</a></li>
                                        <li><a href="<c:url value="/joblist"/>">Find a Jobs </a></li>
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="#">Page</a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">Blog</a></li>
                                                <li><a href="single-blog.html">Blog Details</a></li>
                                                <li><a href="elements.html">Elements</a></li>
                                                <li><a href="job_details.html">job Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact.html">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>          
                            <!-- Header-btn -->
                            <div class="header-btn d-none f-right d-lg-block">
                                <a href="<c:url value="/register"/>" class="btn head-btn1">Register</a>
                                <c:if test="${pageContext.request.userPrincipal.name == null}">
                                    <a href="<c:url value="/login"/>" class="btn head-btn2">Login</a>
                                </c:if>
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                    <a href="<c:url value="/"/>" class="btn head-btn2">${pageContext.request.userPrincipal.name}</a>
                                </c:if>
                            </div>
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
