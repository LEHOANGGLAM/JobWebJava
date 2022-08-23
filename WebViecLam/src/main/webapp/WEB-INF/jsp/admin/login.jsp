<%-- 
    Document   : login
    Created on : Aug 16, 2022, 10:19:44 PM
    Author     : dell
--%>
<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <a href="/admin"><b>Admin</b>WEBSITE</a>
        </div>
        <!-- /.login-logo -->


        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Trang quản trị website</p>

                <form action="/Admin" enctype="multipart/form-data" method="post"><input name="__RequestVerificationToken" type="hidden" value="vUl0N0beI_KH5s8rmfX7f1cMTWyK9iyeeneTGMMurZt3iXwIMXEuKAff89l4Dfgpcf9SDDFE1AGWRUJOEAWv4czoa4Z9CfVgrR-hSWp57wvgJi-tMJGw_wkLjzXPhbXIdpcI5CM2Kd_Qt-dvQRO3-WL7Ls1a7F1xN8zryNVloRo1" />            <div class="input-group mb-3">
                        <input type="text" class="form-control" name="username" placeholder="username">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" name="password" placeholder="Password">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <p></p>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="icheck-primary">
                                <input type="checkbox" id="remember">
                                <label for="remember">
                                    Remember Me
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-6">
                            <button type="submit" class="btn btn-primary btn-block">Đăng Nhập</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>
                <p class="mb-1">
                    <a href="#">I forgot my password</a>
                </p>
            </div>
            <!-- /.login-card-body -->
        </div>
    </div>>
</div>