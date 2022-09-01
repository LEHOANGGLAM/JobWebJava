<%-- 
    Document   : findCandidate
    Created on : Aug 31, 2022, 5:52:02 AM
    Author     : dell
--%>

<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="col-xl-3 col-lg-3 col-md-4">
    <div class="row">
        <div class="col-12">
            <div class="small-section-tittle2 mb-45">

                <h4>Filter Candidate</h4>
            </div>
        </div>
    </div>
    <!--     Job Category Listing start 
        
    <!-- Job Category Listing End -->
</div>
<script>
    function addOrUpdateUrlParam(name, value)
    {
        var href = window.location.href;
        var regex = new RegExp("[&\\?]" + name + "=");
        if (regex.test(href))
        {
            regex = new RegExp("([&\\?])" + name + "=\\d+");
            window.location.href = href.replace(regex, "$1" + name + "=" + value);
        } else
        {
            if (href.indexOf("?") > -1)
                window.location.href = href + "&" + name + "=" + value;
            else
                window.location.href = href + "?" + name + "=" + value;
        }
    }
</script>