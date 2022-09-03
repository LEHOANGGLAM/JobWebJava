<%-- 
    Document   : updatePass
    Created on : Sep 3, 2022, 6:46:29 AM
    Author     : dell
--%>

<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<section class="featured-job-area">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <h1>  Edit User </h1>
                    <form name="resetpasswordform" action="" method="post">
                        <label>UserName</label>
                        <input type="password" name="current_pass">

                        <label for="pass1">New Password</label>
                        <input name="pass1" type="password">

                        <label for="pass2">Confirm New Password</label>
                        <input name="pass2" type="password">

                        <input type="submit" name="submit" id="submit" class="margin-top-20 button" value="Save Changes" />

                        <input type="hidden" name="workscout_core-password-change" value="1" />
                    </form>


                </div>
            </div>
        </div>

    </div>
</section>

