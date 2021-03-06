<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="app.entities.Messages" %>
<%@ page import="app.entities.User" %><%--
  Created by IntelliJ IDEA.
  User: anna
  Date: 17.10.2018
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PocketMSG</title>

</head>
<body>
<%
    out.println("<h3> Welcome, " + request.getSession().getAttribute("username") + "</h3>");
%>

<div>
    <style>
        <%@include file="styles/w3.css"%>
    </style>

    <div id="wrapper">

        <div id="chatbox">
            <%
                    for (String s : Messages.text) {
                        if(s != null) out.println(s);
            %>
            <br>
            <%
                    }
            %>
        </div>

        <div id="usermsg">
            <form method="post" action="${pageContext.request.contextPath}/messenger">
                <p><textarea name="msg" placeholder="Print your message here" id="msg" cols="50" rows="5"></textarea></p>
                <p><input name="sendMessage" type="submit" value="SEND"></p>
            </form>
        </div>
    </div>

    <div id="userList">
        <form method="post" action="${pageContext.request.contextPath}/messenger">
            <label>
                <input type="text" name="addUser"><br />
                <button type="submit">Add new user</button>
            </label>
            <br>
            <%
            for (User user : User.contacts) {
                if(user != null) out.println(user.getName());
            %>
            <br>
            <%
                }
            %>

        </form>

    </div>
</div>

</body>
</html>
