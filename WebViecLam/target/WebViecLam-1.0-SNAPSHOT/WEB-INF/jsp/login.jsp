<%-- 
    Document   : login
    Created on : Aug 14, 2022, 9:15:55 PM
    Author     : PC
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/login" var="action" />



<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/login.css">
    <title>Login</title>
</head>
<body>

    <div id="logreg-forms">
        <c:if test="${param.error !=null}" >
            <div class="alert alert-danger">
                <p>Da co loi xay ra</p>
            </div>
        </c:if>
        <form method="post" action="${action}">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
            <div class="social-login">
                <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </button>
                <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </button>
            </div>
            <p style="text-align:center"> OR  </p>
            <div class="form-group">
            <label>Username</label>
            <input type="username" id="username" name="username" class="form-control" placeholder="Username" required="" >
            <label>Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required="">
            </div>
            <div class="form-group">
                <input  type="submit" value="Sign in ">
            </div>
            <a href="#" id="forgot_pswd">Forgot password?</a>
            <hr>
            <!-- <p>Don't have an account!</p>  -->
            
            <a href="<c:url value="/register"/>" class="btn btn-primary btn-block text-white">Sign up new account</a>
        </form>

        <form action="/reset/password/" class="form-reset">
            <input type="email" id="resetEmail" class="form-control" placeholder="Email address" required="" autofocus="">
            <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
            <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
        </form>

        <form action="/signup/" class="form-signup">
            <div class="social-login">
                <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign up with Facebook</span> </button>
            </div>
            <div class="social-login">
                <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign up with Google+</span> </button>
            </div>

            <p style="text-align:center">OR</p>

            <input type="text" id="user-name" class="form-control" placeholder="Full name" required="" autofocus="">
            <input type="email" id="user-email" class="form-control" placeholder="Email address" required autofocus="">
            <input type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
            <input type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">

            <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
            <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
        </form>
        <br>

    </div>
    <p style="text-align:center">
        <a href="http://bit.ly/2RjWFMfunction toggleResetPswd(e){
           e.preventDefault();
           $('#logreg-forms .form-signin').toggle() // display:block or none
           $('#logreg-forms .form-reset').toggle() // display:block or none
           }

           function toggleSignUp(e){
           e.preventDefault();
           $('#logreg-forms .form-signin').toggle(); // display:block or none
           $('#logreg-forms .form-signup').toggle(); // display:block or none
           }

           $(()=>{
           // Login Register Form
           $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
           $('#logreg-forms #cancel_reset').click(toggleResetPswd);
           $('#logreg-forms #btn-signup').click(toggleSignUp);
           $('#logreg-forms #cancel_signup').click(toggleSignUp);
           })g" target="_blank" style="color:black"></a>
    </p>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="/script.js"></script>
</body>