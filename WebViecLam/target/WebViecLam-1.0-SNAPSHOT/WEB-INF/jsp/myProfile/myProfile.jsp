            
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
                        <form method="post" enctype='multipart/form-data' id="edit_user" action="https://workscout.in/my-profile/">
                            <div class="dashboard-list-box-static">


                                <!-- Details -->
                                <div class="my-profile">

                                    <label for="workscout_core_avatar_id">Avatar</label>
                                    <div class="avatar-wrapper workscout-avatar-form" data-tippy-placement="bottom" title="Change Avatar">

                                        <img class="profile-pic" src="https://workscout.in/wp-content/uploads/2022/01/user-profile-avatar-590x590-1.jpg" alt="" />
                                        <div class="upload-button"></div>
                                        <input class="file-upload"  name="workscout_core_avatar_id" id="workscout_core_avatar_id"  type="file" accept="image/*"/>
                                    </div>	

                                    <div class="clearfix"></div>


                                    <label for="first-name">First Name</label>
                                    <input class="text-input" name="first-name" type="text" id="first-name" value="${u.firstName}" />

                                    <label for="last-name">Last Name</label>
                                    <input class="text-input" name="last-name" type="text" id="last-name" value="${u.lastName}" />

                                    <label for="phone">Phone</label>
                                    <input class="text-input" name="phone" type="text" id="phone" value="${u.contactNumber}" type="text">

                                    <label for="email">E-mail</label>
                                    <input class="text-input" name="email" type="text" id="email" value="${u.email}" />

                                    <label for="description">About me</label>
                                    <textarea name="description" id="description" cols="30" rows="10"></textarea>
                                    <div id="my-profile_socials" style="display: none;">


                                        <label><i class="fa fa-twitter"></i> Twitter</label>
                                        <input class="text-input" name="twitter" type="text" id="twitter" value="" />

                                        <label><i class="fa fa-facebook-square"></i> Facebook</label>
                                        <input class="text-input" name="facebook" type="text" id="facebook" value="" />


                                        <label><i class="fa fa-linkedin"></i> Linkedin</label>
                                        <input class="text-input" name="linkedin" type="text" id="linkedin" value="" />


                                        <label><i class="fa fa-instagram"></i> Instagram</label>
                                        <input class="text-input" name="instagram" type="text" id="instagram" value="" />

                                        <label><i class="fa fa-youtube"></i> YouTube</label>
                                        <input class="text-input" name="youtube" type="text" id="youtube" value="" />

                                        <label><i class="fa fa-whatsapp"></i> WhatsApp</label>
                                        <input class="text-input" name="whatsapp" type="text" id="whatsapp" value="" />

                                        <label><i class="fa fa-skype"></i> Skype</label>
                                        <input class="text-input" name="skype" type="text" id="skype" value="" />

                                    </div>


                                    <input type="hidden" name="my-account-submission" value="1" />
                                    <button type="submit" form="edit_user" value="Submit" class="btn head-btn2">Save Changes</button>




                                </div>


                            </div>
                    </div>
                </div>
                </form>
                <!-- Change Password -->
                <div class="col-lg-6 col-md-12">
                    <div class="dashboard-list-box margin-top-0">
                        <h4 class="gray">Change Password</h4>
                        <div class="dashboard-list-box-static">

                            <!-- Change Password -->
                            <div class="my-profile">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="notification notice margin-top-0 margin-bottom-0">
                                            <p>Your password should be at least 12 random characters long to be safe</p>
                                        </div>
                                    </div>
                                </div>

                                <form name="resetpasswordform" action="" method="post">
                                    <label>Current Password</label>
                                    <input type="password" name="current_pass">

                                    <label for="pass1">New Password</label>
                                    <input name="pass1" type="password">

                                    <label for="pass2">Confirm New Password</label>
                                    <input name="pass2" type="password">

                                    <input type="submit" name="wp-submit" id="wp-submit" class="margin-top-20 button" value="Save Changes" />

                                    <input type="hidden" name="workscout_core-password-change" value="1" />
                                </form>


                            </div>

                        </div>
                    </div>
                </div>

            </div>



          

        </div>
    </div>

</div>

<!-- Dashboard / End -->