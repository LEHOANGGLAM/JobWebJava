<%-- 
    Document   : slide
    Created on : Jul 28, 2022, 4:02:45 AM
    Author     : dell
--%>
<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- slider Area Start-->
<div class="slider-area ">
    <!-- Mobile Menu -->
    <div class="slider-active">
        <c:url value="/img/hero/h1_hero.jpg" var="img"/>
        <div class="single-slider slider-height d-flex align-items-center" data-background="${img}">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-9 col-md-10">
                        <div class="hero__caption">
                            <h1>Find the most exciting startup jobs</h1>
                        </div>
                    </div>
                </div>
                <!-- Search Box -->
                <div class="row">
                    <div class="col-xl-8">
                        <!-- form -->
                        <form action="#" class="search-box">
                            <div class="input-form">
                                <input type="text" placeholder="Job Tittle or keyword">
                            </div>
                            <div class="select-form">
                                <div class="select-itms">
                                    <select name="select" id="select1">
                                        <option value="">Location BD</option>
                                        <option value="">Location PK</option>
                                        <option value="">Location US</option>
                                        <option value="">Location UK</option>
                                    </select>
                                </div>
                            </div>
                            <div class="search-form">
                                <a href="#">Find job</a>
                            </div>	
                        </form>	
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider Area End-->
