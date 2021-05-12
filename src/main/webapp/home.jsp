<%@ page import="com.example.NOTEBOOK.model.User" %>
<%@ page import="com.example.NOTEBOOK.model.Notebook" %><%--
  Created by IntelliJ IDEA.
  User: Echo
  Date: 25.04.2021
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
    HttpSession session1 = request.getSession();
    User user = (User) session1.getAttribute("user");

%>
<br><br><br>
<div class="container">
    <div class="raw">
        <div class="col-4"></div>
        <div class="col-6">
            <div class="card text-center">
                <div class="card-header">
                    Info about User
                </div>
                <div class="card-body">
                    <h5 class="card-title"><%=user.getUsername()%></h5>
                    <p class="card-text"></p>
                    <a href="createNote.jsp" class="btn btn-primary">Create Note</a>
                    <a href="index.jsp" class="btn btn-primary">To main page</a>
                </div>
                <div class="card-footer text-muted">
                    Notebooks
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>

</body>
</html>
