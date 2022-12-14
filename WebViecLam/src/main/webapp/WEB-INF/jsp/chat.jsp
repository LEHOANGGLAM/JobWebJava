<%-- 
    Document   : chat
    Created on : Sep 4, 2022, 12:46:15 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Firebase RealTime Chat</title>
        <link rel="stylesheet" href="css/chat.css">
    </head>
    <body>
        <header>
            <h2>Firebase RealTime Chat</h2>
        </header>

        <div id="chat">
            <!-- messages will display here -->
            <ul id="messages"></ul>

            <!-- form to send message -->
            <form id="message-form">
                <input id="message-input" type="text" />
                <button id="message-btn" type="submit">Send</button>
            </form>
        </div> 
        <!-- scripts -->
        <script src="https://www.gstatic.com/firebasejs/8.2.1/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.2.1/firebase-database.js"></script>
        <script src="js/chat.js"></script>
    </body>
