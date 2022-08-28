<%-- 
    Document   : _filterCompany
    Created on : Aug 28, 2022, 3:25:15 AM
    Author     : dell
--%>
<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="col-xl-3 col-lg-3 col-md-4">
    <div class="row">
        <div class="col-12">
            <div class="small-section-tittle2 mb-45">
             
                <h4>Filter Company</h4>
            </div>
        </div>
    </div>
    <!-- Job Category Listing start -->
    <div class="job-category-listing mb-50">
        <!-- single one -->
        <div class="single-listing">
            <div class="small-section-tittle2">
                <h4>Company Category</h4>
            </div>
            <!-- Select job items start -->
            <div class="select-job-items2">

                <select onchange="return addOrUpdateUrlParam('businessTypeId', this.value)" name="select">
                    <option value="">All Category</option>                 
                    <c:forEach items="${getBusinessType}" var="b">
                        <option value="${b.id}" ${tagCate == b.id ? "selected":""}>${b.businessTypeName}</option>
                    </c:forEach>
                </select>
            </div>
            <!--  Select job items End-->
           
          
        </div>
        <!-- single two -->
       
        
      
    </div>
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