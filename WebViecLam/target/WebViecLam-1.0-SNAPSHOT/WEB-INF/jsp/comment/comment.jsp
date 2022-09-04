<%-- 
    Document   : comment
    Created on : Aug 21, 2022, 11:47:48 PM
    Author     : PC
--%>


<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
<style>
    .rating {
        display: flex;
        margin-top: -10px;
        flex-direction: row-reverse;
        margin-left: -4px;
        float: left;
    }

    .rating>input {
        display: none
    }

    .rating>label {
        position: relative;
        width: 19px;
        font-size: 25px;
        color: #ff0000;
        cursor: pointer;
    }

    .rating>label::before {
        content: "\2605";
        position: absolute;
        opacity: 0
    }

    .rating>label:hover:before,
    .rating>label:hover~label:before {
        opacity: 1 !important
    }

    .rating>input:checked~label:before {
        opacity: 1
    }

    .rating:hover>input:checked~label:before {
        opacity: 0.4
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-sm-10 col-sm-offset-1" id="logout">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="section-tittle text-center">Leave your comment</h3>

                </div>
            </div>
            <div class="comment-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="active"><a href="#comments-logout" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
                    <li><a href="#add-comment" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Add comment</h4></a></li>

                </ul>            
                <br>
                <div class="tab-content">

                    <div class="tab-pane active" id="comments-logout">   
                        <c:forEach items="${c.commentCollection}" var="comment">
                            <ul class="media-list">
                                <li class="media">
                                    <div class="company-img">
                                        <a href="/companydetail">  <img class="img-fluid" src="<c:url value="https://res.cloudinary.com/dmstiyczr/image/upload/v1660991485/job-list1_zrhpja.png"/>" alt="alt"/></a>
                                    </div>
                                    <div class="media-body">
                                        <div class="well well-lg">
                                            <h4 class="media-heading text-uppercase reviews">${comment.userId.getFirstName()} </h4>
                                            <ul class="media-date text-uppercase reviews list-inline">
                                                ${comment.createdDate}
                                            </ul>
                                            <br>
                                            <div class="rating"> 
                                                <input type="radio" name="rating" value="5" id="5" <c:choose>
                                                           <c:when test="${comment.rating=='5'}">
                                                               checked

                                                           </c:when>    
                                                           <c:otherwise>
                                                               disabled
                                                           </c:otherwise>
                                                       </c:choose>><label for="5">☆</label>
                                                <input type="radio" name="rating" value="4" id="4"  <c:choose>
                                                           <c:when test="${comment.rating=='4'}">
                                                               checked

                                                           </c:when>    
                                                           <c:otherwise>
                                                               disabled
                                                           </c:otherwise>
                                                       </c:choose>><label for="4">☆</label> 
                                                <input type="radio" name="rating" value="3" id="3"  <c:choose>
                                                           <c:when test="${comment.rating=='3'}">
                                                               checked

                                                           </c:when>    
                                                           <c:otherwise>
                                                               disabled
                                                           </c:otherwise>
                                                       </c:choose>><label for="3">☆</label>
                                                <input type="radio" name="rating" value="2" id="2"  <c:choose>
                                                           <c:when test="${comment.rating=='2'}">
                                                               checked

                                                           </c:when>    
                                                           <c:otherwise>
                                                               disabled
                                                           </c:otherwise>
                                                       </c:choose>><label for="2">☆</label>
                                                <input type="radio" name="rating" value="1" id="1"  <c:choose>
                                                           <c:when test="${comment.rating=='1'}">
                                                               checked

                                                           </c:when>    
                                                           <c:otherwise>
                                                               disabled
                                                           </c:otherwise>
                                                       </c:choose>><label for="1">☆</label>
                                            </div>
                                            <br>
                                            <p class="media-comment">
                                                ${comment.content}
                                            </p>
                                            <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                                            <a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyOne"><span class="glyphicon glyphicon-comment"></span> 2 comments</a>
                                        </div>              
                                    </div>

                                </li>
                            </ul> 
                        </c:forEach>
                    </div>

                    <div class="tab-pane" id="add-comment">
                        <form <form method="post" action="${action}" modelAttribute="comment" id="algin-form"> 
                            <label for="comment" class="col-sm-2 control-label">Rating:</label>
                            <div class="rating"> 
                                <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label>
                                <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> 
                                <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label>
                                <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label>
                                <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label>
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="comment" class="col-sm-2 control-label">Comment</label>
                                <div class="col-sm-10">
                                    <textarea name="content" id="content" cols="30" rows="10" path="content"></textarea>
                                </div>
                            </div>
                            <br>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">                    
                                    <button class="btn btn-success btn-circle text-uppercase" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
                                </div>
                            </div>            
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>


</div>