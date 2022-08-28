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

                <div class="submit-page">
                    <!-- Job Information Fields -->
                    <form>
                        <fieldset class="form fieldset-job_title">
                            <label for="job_title">Job Title</label>
                            <div class="field required-field">
                                <input type="text" class="input-text" name="job_title" id="job_title" placeholder="" value="" maxlength="" required="">
                            </div>
                        </fieldset>
                        <fieldset class="form fieldset-job_location" style="width: 50%; display: inline-block; margin-right: 20px">
                            <label for="job_location">Street <small>(optional)</small></label>
                            <div class="field ">
                                <input type="text" class="input-text" name="job_location" id="job_location" placeholder="e.g. &quot;London&quot;" value="" maxlength="" autocomplete="off"><div id="leaflet-geocode-cont"><ul></ul></div>
                                <a href="#"><i title="Find My Location" class="tooltip left la la-map-marked-alt"></i></a>
                                <span class="type-and-hit-enter">type and hit enter</span> 						</div>
                        </fieldset>
                        <fieldset class="form fieldset-job_region" style="width: 40%; display: inline-block">
                            <label for="job_region">City</label>
                            <div class="field required-field">
                                <select name="job_region" id="job_region" class="select2-single select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                    <option value="">Select Region</option>
                                    <option class="level-0" value="2731">California</option>

                                </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-job_region-container"><span class="select2-selection__rendered" id="select2-job_region-container" title="Select Region"><span class="select2-selection__clear">×</span>Select Region</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                            </div>
                        </fieldset>
                        <fieldset class="form fieldset-job_type" style="width: 50%; display: inline-block; margin-right: 20px">
                            <label for="job_type">Job Nature</label>
                            <div class="field required-field">
                                <select name="job_type[]" id="job_type" class="job-manager-category-dropdown select2-hidden-accessible" multiple="" data-placeholder="Choose job type…" data-no_results_text="No results match" data-multiple_text="Select Some Options" tabindex="-1" aria-hidden="true">
                                    <option class="level-0" value="5">Freelance</option>
                                    <option class="level-0" value="2" selected="selected">Full Time</option>
                                    <option class="level-0" value="6">Internship</option>
                                    <option class="level-0" value="3">Part Time</option>
                                    <option class="level-0" value="4">Temporary</option>
                                </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul class="select2-selection__rendered"><span class="select2-selection__clear">×</span><li class="select2-selection__choice" title="Full Time"><span class="select2-selection__choice__remove" role="presentation">×</span>Full Time</li><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" role="textbox" aria-autocomplete="list" placeholder="" style="width: 0.75em;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                            </div>
                        </fieldset>
                        <fieldset class="form fieldset-job_category" style="width: 40%; display: inline-block">
                            <label for="job_category">Job category</label>
                            <div class="field required-field">
                                <select name="job_category[]" id="job_category" class="job-manager-category-dropdown select2-hidden-accessible" multiple="" data-placeholder="Choose a category…" data-no_results_text="No results match" data-multiple_text="Select Some Options" tabindex="-1" aria-hidden="true">
                                    <option class="level-0" value="122">Accounting / Finance</option>
                                    <option class="level-0" value="124">Automotive Jobs</option>
                                    <option class="level-0" value="132">Construction / Facilities</option>

                                </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul class="select2-selection__rendered"><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" role="textbox" aria-autocomplete="list" placeholder="Choose a category…" style="width: 542.6px;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                            </div>
                        </fieldset>
                        <fieldset class="form fieldset-job_tags">
                            <label for="job_tags">Job tags <small>(optional)</small></label>
                            <div class="field ">
                                <input type="text" class="input-text" name="job_tags" id="job_tags" placeholder="e.g. PHP, Social Media, Management" value="" maxlength="">
                                <small class="description">Comma separate tags, such as required skills or technologies, for this job.</small>							</div>
                        </fieldset>
                        <fieldset class="form fieldset-job_description">
                            <label for="job_description">Description</label>
                            <div class="field required-field">
                                <div id="wp-job_description-wrap" class="wp-core-ui wp-editor-wrap tmce-active"><link rel="stylesheet" id="editor-buttons-css" href="https://workscout.in/wp-includes/css/editor.min.css" type="text/css" media="all">
                                    <style> .mce-top-part button {
                                            background-color: rgba(0,0,0,0.0) !important;
                                        } </style>
                                    <div id="wp-job_description-editor-container" class="wp-editor-container"><div id="mceu_8" class="mce-tinymce mce-container mce-panel" hidefocus="1" tabindex="-1" role="application" style="visibility: hidden; border-width: 1px; width: 100%;"><div id="mceu_8-body" class="mce-container-body mce-stack-layout"><div id="mceu_9" class="mce-top-part mce-container mce-stack-layout-item mce-first"><div id="mceu_9-body" class="mce-container-body"><div id="mceu_10" class="mce-toolbar-grp mce-container mce-panel mce-first mce-last" hidefocus="1" tabindex="-1" role="group"><div id="mceu_10-body" class="mce-container-body mce-stack-layout"><div id="mceu_11" class="mce-container mce-toolbar mce-stack-layout-item mce-first mce-last" role="toolbar"><div id="mceu_11-body" class="mce-container-body mce-flow-layout"><div id="mceu_12" class="mce-container mce-flow-layout-item mce-first mce-btn-group" role="group"><div id="mceu_12-body"><div id="mceu_0" class="mce-widget mce-btn mce-first" tabindex="-1" aria-pressed="false" role="button" aria-label="Bold (Ctrl+B)"><button id="mceu_0-button" role="presentation" type="button" tabindex="-1"><i class="mce-ico mce-i-bold"></i></button></div><div id="mceu_1" class="mce-widget mce-btn mce-last" tabindex="-1" aria-pressed="false" role="button" aria-label="Italic (Ctrl+I)"><button id="mceu_1-button" role="presentation" type="button" tabindex="-1"><i class="mce-ico mce-i-italic"></i></button></div></div></div><div id="mceu_13" class="mce-container mce-flow-layout-item mce-btn-group" role="group"><div id="mceu_13-body"><div id="mceu_2" class="mce-widget mce-btn mce-first" tabindex="-1" aria-pressed="false" role="button" aria-label="Bulleted list (Shift+Alt+U)"><button id="mceu_2-button" role="presentation" type="button" tabindex="-1"><i class="mce-ico mce-i-bullist"></i></button></div><div id="mceu_3" class="mce-widget mce-btn mce-last" tabindex="-1" aria-pressed="false" role="button" aria-label="Numbered list (Shift+Alt+O)"><button id="mceu_3-button" role="presentation" type="button" tabindex="-1"><i class="mce-ico mce-i-numlist"></i></button></div></div></div><div id="mceu_14" class="mce-container mce-flow-layout-item mce-btn-group" role="group"><div id="mceu_14-body"><div id="mceu_4" class="mce-widget mce-btn mce-first" tabindex="-1" aria-pressed="false" role="button" aria-label="Insert/edit link (Ctrl+K)"><button id="mceu_4-button" role="presentation" type="button" tabindex="-1"><i class="mce-ico mce-i-link"></i></button></div><div id="mceu_5" class="mce-widget mce-btn mce-last" tabindex="-1" role="button" aria-label="Remove link (Shift+Alt+S)"><button id="mceu_5-button" role="presentation" type="button" tabindex="-1"><i class="mce-ico mce-i-unlink"></i></button></div></div></div><div id="mceu_15" class="mce-container mce-flow-layout-item mce-last mce-btn-group" role="group"><div id="mceu_15-body"><div id="mceu_6" class="mce-widget mce-btn mce-first mce-disabled" tabindex="-1" role="button" aria-label="Undo (Ctrl+Z)" aria-disabled="true"><button id="mceu_6-button" role="presentation" type="button" tabindex="-1"><i class="mce-ico mce-i-undo"></i></button></div><div id="mceu_7" class="mce-widget mce-btn mce-last mce-disabled" tabindex="-1" role="button" aria-label="Redo (Ctrl+Y)" aria-disabled="true"><button id="mceu_7-button" role="presentation" type="button" tabindex="-1"><i class="mce-ico mce-i-redo"></i></button></div></div></div></div></div></div></div></div></div><div id="mceu_16" class="mce-edit-area mce-container mce-panel mce-stack-layout-item" hidefocus="1" tabindex="-1" role="group" style="border-width: 1px 0px 0px;"><iframe id="job_description_ifr" frameborder="0" allowtransparency="true" title="Rich Text Area. Press Alt-Shift-H for help." style="width: 100%; height: 176px; display: block;"></iframe></div><div id="mceu_17" class="mce-statusbar mce-container mce-panel mce-stack-layout-item mce-last" hidefocus="1" tabindex="-1" role="group" style="border-width: 1px 0px 0px;"><div id="mceu_17-body" class="mce-container-body mce-flow-layout"><div id="mceu_18" class="mce-path mce-flow-layout-item mce-first"><div class="mce-path-item">&nbsp;</div></div><div id="mceu_19" class="mce-flow-layout-item mce-last mce-resizehandle"><i class="mce-ico mce-i-resize"></i></div></div></div></div></div><textarea class="wp-editor-area" rows="8" autocomplete="off" cols="40" name="job_description" id="job_description" aria-hidden="true" style="display: none;"></textarea></div>
                                </div>

                            </div>
                        </fieldset>


                        <fieldset class="form fieldset-salary_min" style="width: 50%; display: inline-block; margin-right: 20px">
                            <label for="salary_min">Minimum Salary Per Month($) <small>(optional)</small></label>
                            <div class="field ">
                                <input type="text" class="input-text" name="salary_min" id="salary_min" placeholder="e.g. 20000" value="" maxlength="">
                            </div>
                        </fieldset>
                        <fieldset class="form fieldset-salary_max"style="width: 40%; display: inline-block;">
                            <label for="salary_max">Maximum Salary Per Month($) <small>(optional)</small></label>
                            <div class="field ">
                                <input type="text" class="input-text" name="salary_max" id="salary_max" placeholder="e.g. 50000" value="" maxlength="">
                            </div>
                        </fieldset>
                        <!--            <fieldset class="form fieldset-apply_link">
                                        <label for="apply_link">External "Apply for Job" link <small>(optional)</small></label>
                                        <div class="field ">
                                            <input type="text" class="input-text" name="apply_link" id="apply_link" placeholder="http://" value="" maxlength="">
                                        </div>
                                    </fieldset>-->

                    </form>
                    <!-- Company Information Fields -->
                </div>
            </div>
        </div>
    </div>
</div>