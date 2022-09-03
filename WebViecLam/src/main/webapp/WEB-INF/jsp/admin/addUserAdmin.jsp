<%-- 
    Document   : updatePass
    Created on : Sep 3, 2022, 6:46:29 AM
    Author     : dell
--%>

<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link href="/css/main.css" rel="stylesheet" media="all">
    <style>
        .note
        {
            text-align: center;
            height: 80px;
            background: -webkit-linear-gradient(left, #0072ff, #8811c5);
            color: #fff;
            font-weight: bold;
            line-height: 80px;
        }
        .form-content
        {
            padding: 5%;
            border: 1px solid #ced4da;
            margin-bottom: 2%;
        }
        .form-control{
            border-radius:1.5rem;
        }
        .btnSubmit
        {
            border:none;
            border-radius:1.5rem;
            padding: 1%;
            width: 20%;
            cursor: pointer;
            background: #0062cc;
            color: #fff;
        }
    </style>
</head>

<section class="featured-job-area">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <h1>  Add User </h1>
                    <c:if   test="${errMsg != null}">
                        <div class="alert alert-danger">
                            ${errMsg}
                        </div>
                    </c:if>
                    <form:form action="${action}" method="post" modelAttribute="user">
                        <div class="form-content">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <form:input type="text" class="form-control" placeholder="Username *" path="username"/>
                                    </div>
                                    <div class="form-row">
                                        <div class="name">Date of Birth</div>
                                        <div class="value">
                                            <div class="input-group">
                                                <form:input id="dateOfBirth" class="input--style-5" type="date" name="dateOfBirth" path="dateString"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <form:input type="password" class="form-control" placeholder="Password *" path="password"/>
                                    </div>
                                    <div class="form-group">
                                        <form:input type="password" class="form-control" placeholder="Confirm Password *" path="confirmedPassword"/>
                                    </div>
                                </div>
                            </div>
                            <button type="summit" class="btnSubmit">Submit</button>
                        </div>
                    </form:form>


                </div>
            </div>
        </div>

    </div>
</section>

