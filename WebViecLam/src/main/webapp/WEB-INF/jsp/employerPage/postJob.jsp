<%-- 
    Document   : postJob
    Created on : Aug 29, 2022, 1:21:25 AM
    Author     : dell
--%>
<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container">
    <div class="row justify-content-between">

        <div class="dashboard-list-box job-fields-submit-form no-company-yet" style="margin-bottom: 50px">
            <div class="dashboard-list-box-content">

                <h1 style="margin-bottom: 30px; margin-top: 50px; color: #ff4b5a;">Post A Job</h1>

                <c:if test="${errMsg!=null}">
                    <div class="notification notice margin-bottom-25">${errMsg}</div>
                </c:if>
                <div class="submit-page">
                    <!-- Job Information Fields -->
                    <c:url value="/postJob" var="action"/>
                    <form method="post" action="${action}" id="form-apply-cv" modelAttribute="j">
                        <input type="hidden" class="input-text" name="id" path="id"   id="id" value="${job.id}">
                        <fieldset class="form fieldset-job_title"  style="width: 70%; display: inline-block;">
                            <label for="job_title">Job Title</label>
                            <div class="field required-field">
                                <input type="text" class="input-text" name="jobTitle" path="jobTitle" id="job_title" value="${job.jobTitle}" required>
                            </div>
                        </fieldset>
                        <fieldset class="form fieldset-job_location" style="width: 25%; display: inline-block; " >
                            <label for="job_location" style="margin-left: 50px; display: inline-block; ">Work Address </label>
                            <div class="field " style="margin-left: 50px; display: inline-block; ">
                                <select id="streetId" name="streetId" path="streetId" > 

                                    <c:forEach items="${loca}" var="l">
                                       
                                        <option value="${l.id}" ${tagLoca == l.id ? "selected" : ""}>${l.streetName}, ${l.cityId.getCity()}</option>
                                    </c:forEach>

                                </select>	

                            </div>
                        </fieldset>

                        <fieldset class="form fieldset-job_type" style="width: 50%; display: inline-block; margin-right: 20px">
                            <label for="job_type">Job Nature</label>
                            <div class="field required-field">
                                <input type="text" class="input-text" name="jobNature" path="jobNature" id="jobNature" placeholder="e.g Full time" value="${job.jobNature}"  required>
                            </div>
                        </fieldset>
                        <fieldset class="form fieldset-job_category" style="width: 40%; display: inline-block;">
                            <label for="job_category"  style="margin-left: 50px; display: inline-block; ">Job category</label>
                            <div class="field required-field">
                                <div class="field "style="margin-left: 50px; display: inline-block; ">
                                    <select id="typeId" name="typeId" path="typeId" required> 
<!--                                        <option value="${job.jobTypeId.getId()}" selected>${job.jobTypeId.getJobType()}</option>-->
                                        <c:forEach items="${jobType}" var="l">
                                            <option value="${l.id}" ${tagJobType == l.id ? "selected" : ""}>${l.jobType}</option>
                                        </c:forEach>

                                    </select>	

                                </div>
                            </div>
                        </fieldset>
                        <fieldset class="form fieldset-job_tags" style="width: 40%; display: block">
                            <label for="job_tags">Vacancy <small>(optional)</small></label>
                            <div class="field required-field">
                                <input type="number" class="input-text" name="vacancy" path="vacancy" id="vacancy" placeholder="" value="${job.vacancy}" >
                            </div>						
                        </fieldset>
                        <fieldset class="form fieldset-job_tags" style="width: 40%; display: block">
                            <label for="job_tags">Years experience Require<small>(optional)</small></label>
                            <div class="field required-field">
                                <input type="number" class="input-text" name="yearExperRequire" path="yearExperRequire" id="yearExperRequire" placeholder="" value="${job.yearExperRequire}" >
                            </div>						
                        </fieldset>
                        <fieldset class="form fieldset-job_description">
                            <label for="job_description">Description</label>

                            <textarea class="input-text" rows="10" name="jobDescription" path="jobDescription" id="jobDescription" placeholder=""  >${job.jobRequirement}</textarea>


                        </fieldset>
                        <fieldset class="form fieldset-job_description">
                            <label for="job_description">Job Requirement</label>

                            <textarea class="input-text" rows="5" name="jobRequirement" path="jobRequirement" id="jobRequirement" placeholder=""  >${job.jobRequirement}</textarea>


                        </fieldset>
                        <fieldset class="form fieldset-job_description">
                            <label for="job_description">Individual Right</label>

                            <textarea class="input-text" rows="10" name="individualRight" path="individualRight" id="individualRight" placeholder="" >${job.jobRequirement}</textarea>


                        </fieldset>


                        <fieldset class="form fieldset-salary_min" style="width: 50%; display: inline-block; margin-right: 20px">
                            <label for="salary_min">Minimum Salary Per Month($) <small>(optional)</small></label>
                            <div class="field ">
                                <input type="number" class="input-text"name="jobMinSalary" id="jobMinSalary" placeholder="e.g. 50000" path="jobMinSalary"  value="${job.jobMinSalary}" required>
                            </div>
                        </fieldset>
                        <fieldset class="form fieldset-salary_max"style="width: 40%; display: inline-block;">
                            <label for="salary_max">Maximum Salary Per Month($) <small>(optional)</small></label>
                            <div class="field ">
                                <input type="number" class="input-text" name="jobMaxSalary" id="jobMaxSalary" placeholder="e.g. 50000" path="jobMaxSalary"   value="${job.jobMaxSalary}"required>
                            </div>
                        </fieldset>
                        <!--            <fieldset class="form fieldset-apply_link">
                                        <label for="apply_link">External "Apply for Job" link <small>(optional)</small></label>
                                        <div class="field ">
                                            <input type="text" class="input-text" name="apply_link" id="apply_link" placeholder="http://" value="" maxlength="">
                                        </div>
                                    </fieldset>-->
                        <fieldset class="form fieldset-job_tags" style="width: 40%; display: block; margin-top: 20px; margin-bottom: 20px">
                            <label for="job_tags">Expiration Date<small>(optional)</small></label>
                            <div class="field required-field">
                                <input type="date" class="input-text" name="dateString" path="dateString"  value="${job.expirationDate}" id="dateString" >
                            </div>						

                        </fieldset>
                        <button type="submit" class="btn btn-topcv-primary btn-theme" style="margin-top: 20px">
                            <c:if test="${job != null}">
                                Confirm Edit

                            </c:if>    
                            <c:if test="${job == null}">
                                Add Job Post

                            </c:if>    
                        </button>
                    </form>
                    <!-- Company Information Fields -->

                </div>

            </div>
        </div>
    </div>
</div>

