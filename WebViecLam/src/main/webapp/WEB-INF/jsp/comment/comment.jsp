<%-- 
    Document   : comment
    Created on : Aug 21, 2022, 11:47:48 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">

    <div class="col-sm-5 col-md-6 col-12 pb-4">
        <h1>Comments</h1>
        <c:forEach items="${c.commentCollection}" var="comment">
            <div class="comment mt-4 text-justify float-left">
                <img src="https://i.imgur.com/yTFUilP.jpg" alt="" class="rounded-circle" width="40" height="40">
                <h4>John Doe</h4>
                <span>${comment.createdDate}</span>
                <br>
                <p>${comment.content}</p>
            </div>
        </c:forEach>
    </div>

    <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4">

        <form id="algin-form">
            <div class="form-group">
                <h4>Leave a comment</h4>
                <label for="message">Message</label>
                <textarea name="msg" id=""msg cols="30" rows="5" class="form-control" style="background-color: black;"></textarea>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" id="fullname" class="form-control">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" name="email" id="email" class="form-control">
            </div>
            <div class="form-group">
                <p class="text-secondary">If you have a <a href="#" class="alert-link">gravatar account</a> your address will be used to display your profile picture.</p>
            </div>
            <div class="form-inline">
                <input type="checkbox" name="check" id="checkbx" class="mr-1">
                <label for="subscribe">Subscribe me to the newlettter</label>
            </div>
            <div class="form-group">
                <button type="button" id="post" class="btn">Post Comment</button>
            </div>
        </form>
    </div>
</div>