<%-- 
    Document   : adminBase
    Created on : Aug 17, 2022, 1:37:41 AM
    Author     : dell
--%>
<%-- 
    Document   : noHFPage
    Created on : Aug 16, 2022, 10:14:58 PM
    Author     : dell
--%>
<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">

    <head>    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <c:url value="/resources/img/logo/logo.png" var="link"/>
        <link rel="shortcut icon" type="image/x-icon" href="${link}">
        <meta property="#" content="#" />
        <meta name="keywords" content="Thông tin tuyển dụng, miễnn phí, nhà tuyển dụng, quản lý hồ sơ ứng viên, tìm kiếm hồ sơ ứng viên">
        <meta name="author" content="Hoang Lam, Thanh Dat">
        <meta property="og:locale" content="vi_VN" />
        <meta property="og:locale:alternate" content="en_US" />
        <meta name="og:title" content="#">
        <meta name="og:description" content="#">
        <meta name="og:site_name" content="WorkFun">
        <meta property="og:image" content="#">


        <!-- CSS here -->
        <link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/animate.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/flaticon.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/fontawesome-all.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/magnific-popup.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/nice-select.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/owl.carousel.min.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/price_rangs.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/responsive.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/slick.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/slicknav.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="/css/themify-icons.css"/>" rel="stylesheet" type="text/css">


        <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">


        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <title>
            <tiles:insertAttribute name="title" />
        </title>
    </head>

    <body>

        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        <c:url value="/img/logo/logo.png" var="img"/>
                        <img src="${img}" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!--         Preloader Start -->

        <tiles:insertAttribute name="header" />

        <tiles:insertAttribute name="content" />

        <!--    JS here -->
        <script src="<c:url value="/js/vendor/modernizr-3.5.0.min.js" />"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="<c:url value="/js/vendor/jquery-1.12.4.min.js" />"></script>
        <script src="<c:url value="/js/popper.min.js" />"></script>
        <script src="<c:url value="/js/bootstrap.min.js" />"></script>
        <!-- Jquery Mobile Menu -->
        <script src="<c:url value="/js/jquery.slicknav.min.js" />"></script>
        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="<c:url value="/js/owl.carousel.min.js" />"></script>
        <script src="<c:url value="/js/slick.min.js" />"></script>
        <script src="<c:url value="/js/price_rangs.js" />"></script>
        <!-- One Page, Animated-HeadLin -->
        <script src="<c:url value="/js/wow.min.js" />"></script>
        <script src="<c:url value="/js/animated.headline.js" />"></script>
        <script src="<c:url value="/js/jquery.magnific-popup.js" />"></script>
        <!-- Scrollup, nice-select, sticky -->
        <script src="<c:url value="/js/jquery.scrollUp.min.js" />"></script>
        <script src="<c:url value="/js/jquery.nice-select.min.js" />"></script>
        <script src="<c:url value="/js/jquery.sticky.js" />"></script>
        <!-- contact js -->
        <script src="<c:url value="/js/contact.js" />"></script>
        <script src="<c:url value="/js/jquery.form.js" />"></script>
        <script src="<c:url value="/js/jquery.validate.min.js" />"></script>
        <script src="<c:url value="/js/mail-script.js" />"></script>
        <script src="<c:url value="/js/jquery.ajaxchimp.min.js" />"></script>
        <!-- Jquery Plugins, main Jquery -->	
        <script src="<c:url value="/js/plugins.js" />"></script>
        <script src="<c:url value="/js/main.js" />"></script>



    </body>
</html>

