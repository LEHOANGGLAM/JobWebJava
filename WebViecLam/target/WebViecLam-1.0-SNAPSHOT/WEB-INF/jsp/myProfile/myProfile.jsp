            
<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="job-post-company pt-120 pb-120">
    <div class="container">




        <!-- Content
            ================================================== -->  
        <div class="dashboard-content" id="post-18886" class="post-18886 page type-page status-publish hentry">
            <!-- Titlebar -->
            <div id="titlebar">
                <div class="row">
                    <div class="col-md-12">
                        <h1>My Profile</h1>  
                        <!-- Breadcrumbs -->

                    </div>
                </div>
            </div>




            <div class="row">

                <!-- Profile -->
                <div class="col-lg-6 col-md-12">
                    <div class="dashboard-list-box margin-top-0">
                        <h4 class="gray">Profile Details</h4>
                        <c:url value="/myProfile" var="action"/>

                        <form:form method="post" enctype='multipart/form-data' modelAttribute="u" id="edit_user" action="${action}">
                            <div class="dashboard-list-box-static">


                                <!-- Details -->
                                <div class="my-profile">

                                    <label for="workscout_core_avatar_id">Avatar</label>
                                    <div class="avatar-wrapper workscout-avatar-form" data-tippy-placement="bottom" title="Change Avatar">

                                        <img class="profile-pic" src="https://workscout.in/wp-content/uploads/2022/01/user-profile-avatar-590x590-1.jpg" alt="" />
                                        <div class="upload-button"></div>


                                    </div>	

                                    <div class="clearfix"></div>


                                    <label for="first-name">First Name</label>
                                    <form:input class="text-input" name="first-name" type="text" id="first-name" value="${u.firstName}" path="firstName" />
                                    .
                                    <label for="last-name">Last Name</label>
                                    <form:input class="text-input" name="last-name" type="text" id="last-name" value="${u.lastName}" path="lastName"/>

                                    <label for="phone">Phone</label>
                                    <form:input class="text-input" name="phone" type="text" id="phone" value="${u.contactNumber}"  path="contactNumber" />

                                    <label for="email">E-mail</label>
                                    <form:input class="text-input" name="email" type="text" id="email" value="${u.email}" path="email" />

                                    <label for="description">About me</label>
                                    <form:textarea name="description" id="description" cols="30" rows="10" path="aboutMe"/>

                                    <button type="submit" form="edit_user"  class="btn head-btn2">Save Changes</button>




                                </div>


                            </div>
                        </form:form>
                    </div>
                </div>

                <!-- Change Password -->
                <div class="col-lg-6 col-md-12">
                    <div class="dashboard-list-box margin-top-0">
                        <h4 class="gray">Change Password</h4>
                        <div class="dashboard-list-box-static">

                            Change Password 
                            <div class="my-profile">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="notification notice margin-top-0 margin-bottom-0">
                                            <p>Your password should be at least 12 random characters long to be safe</p>
                                        </div>
                                    </div>
                                </div>

                               


                            </div>

                        </div>
                    </div>
                </div>

            </div>





        </div>
    </div>

</div>

<!-- Dashboard / End -->