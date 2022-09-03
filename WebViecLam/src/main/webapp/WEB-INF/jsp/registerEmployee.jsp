<%-- 
    Document   : register1
    Created on : Aug 27, 2022, 1:27:52 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">

        <!-- Title Page-->
        <title>Employee Register</title>

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
        <link href="css/main.css" rel="stylesheet" media="all">
        <script>
            $(document).ready(function () {
                $("#myModal").modal('show');
            });
        </script>
        <style>
            #outer
            {
                width:100%;
                text-align: center;
            }
            .inner
            {
                display: inline-block;
            }
        </style>
    </head>





    <body>
        <div id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h5 class="modal-title">Who are you ?</h5>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">                        
                        <div class="header-btn d-none f-right d-lg-block">
                            <a href="<c:url value="/register"/>" class="btn head-btn1 text-primary inner" data-dismiss="modal">You are a Employee</a>

                            <a href="<c:url value="/registerHirer"/>" class="btn head-btn2 text-primary inner">Your are an Hirer</a>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
            <div class="wrapper wrapper--w790">
                <div class="card card-5">
                    <div class="card-heading">
                        <h2 class="title">Employee Registration Form</h2>
                    </div>
                    <div class="card-body">
                        <c:if   test="${errMsg != null}">
                            <div class="alert alert-danger">
                                ${errMsg}
                            </div>
                        </c:if>
                        <form:form method="post" action="${action}" modelAttribute="user">
                            <div class="form-row m-b-55">
                                <div class="name">Name</div>
                                <div class="value">
                                    <div class="row row-refine">
                                        <div class="col-3">
                                            <div class="input-group-desc">
                                                <form:input id="first-name" class="input--style-5" type="text" name="first_name" path="firstName"/>
                                                <label class="label--desc">First Name</label>
                                            </div>
                                        </div>
                                        <div class="col-9">
                                            <div class="input-group-desc">
                                                <form:input id="last-name" class="input--style-5" type="text" name="last_name" path="lastName"/>
                                                <label class="label--desc">Last Name</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Username</div>
                                <div class="value">
                                    <div class="input-group">
                                        <form:input id="user-name" class="input--style-5" type="text" name="username" path="username"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Password</div>
                                <div class="value">
                                    <div class="input-group">
                                        <form:input id="password" class="input--style-5" type="password" name="pasword" path="password"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Confirmed Password</div>
                                <div class="value">
                                    <div class="input-group">
                                        <form:input id="confirmed-password" class="input--style-5" type="password" name="confirmed-pasword" path="confirmedPassword"/>
                                    </div>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="name">Email</div>
                                <div class="value">
                                    <div class="input-group">
                                        <form:input id="email" class="input--style-5" type="email" name="email" path="email"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Date of Birth</div>
                                <div class="value">
                                    <div class="input-group">
                                        <form:input id="dateOfBirth" class="input--style-5" type="date" name="dateOfBirth" path="dateString"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Phone</div>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="input-group">
                                            <form:input id="phone" class="input--style-5" type="text" name="phone" path="contactNumber"/>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row p-t-20">
                                <label class="label label--block">Choose your gender?</label>
                                <div class="p-t-15">
                                    <label class="radio-container m-r-55">Male
                                        <form:radiobutton path="gender" value="Male"/>  
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">Female
                                        <form:radiobutton path="gender" value="Female"/>  
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                            <div>
                                <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Jquery JS-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Vendor JS-->
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/datepicker/moment.min.js"></script>
        <script src="vendor/datepicker/daterangepicker.js"></script>

        <!-- Main JS-->
        <script src="js/global.js"></script>

    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->