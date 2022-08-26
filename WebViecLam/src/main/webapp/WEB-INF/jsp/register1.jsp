<%-- 
    Document   : registry
    Created on : Aug 3, 2022, 4:52:17 AM
    Author     : dell
--%>
<%@include file="../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/login.css">
    <title>Register</title>
</head>
<body>

    <div id="logreg-forms">
        <c:if test="${errMsg !=null}" >
            <div class="alert alert-danger">
                ${errMsg}
            </div>
        </c:if>
        <c:url value="/register" var="action"/>
        <form:form method="post" action="${action}" modelAttribute="user">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
            <!--            <div class="social-login">
                            <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </button>
                            <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </button>
                        </div>-->
            <!--            <p style="text-align:center"> OR  </p>-->
            <div class="form-group">
                <label>Username</label>
                <form:input type="username" id="username"  path="username" class="form-control" placeholder="Username" required="" />
                <label>Password</label>
                <form:input type="password" id="password"  path="password" class="form-control" placeholder="Password" required=""/>
            </div>

            <label>First Name</label>
            <form:input type="text" id="first-name"  path="firstName" class="form-control" placeholder="First Name" required=""/>
            <label>Last Name</label>
            <form:input type="text" id="last-name"  path="lastName" class="form-control" placeholder="Last Name" required=""/>
            <label>Email</label>
            <form:input type="email" id="email"  path="email" class="form-control" placeholder="Email" required=""/>
            <label>Phone</label>
            <form:input type="text" id="text"  path="contactNumber" class="form-control" placeholder="Phone Number" required=""/>
            
            <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
        </div>

        <hr>
        <!-- <p>Don't have an account!</p>  -->

    </form:form>


    <br>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="/script.js"></script>
</body>
