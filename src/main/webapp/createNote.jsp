<%@ page import="com.example.NOTEBOOK.model.User" %>
<%@ page import="com.example.NOTEBOOK.model.Notebook" %><%--
  Created by IntelliJ IDEA.
  User: Echo
  Date: 25.04.2021
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create notes</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
            crossorigin="anonymous"></script>

</head>

<% HttpSession http = request.getSession();%>
<% User user = (User) http.getAttribute("user");%>

<body style="background-color: rgba(249,249,249,1)">
<div class="row">
    <div style="background-color: rgba(11,11,11,1); width: 100%; height: auto">
        <br>
        <span style="margin-left: 5%" class="text-white">БЛОКНОТ ОНЛАЙН</span>
        <form action="/logoutServlet" method="post" >
            <a type="submit" href="index.jsp" style="float: right;margin-right: 1% ;text-decoration-line: none" class="text-white">ВЫЙТИ</a>
        </form>
        <br>
        <br>
    </div>
</div>
<%--        Теперь тело         --%>
<div class="row">

    <div class="col-3">
        <div class="container">
            <br>
            <form action="/AddingNote" method="post">
                <button class="btn btn-primary"  style="width: 70%">+ Создать новую запись</button>
            </form>
        </div>
        <hr style="width: 102.5%">
        <div class="container text-dark">
            <div class="col" style="border: black 1px solid">

                <% for (Notebook notebook: user.getNotebooks()){ %>
                <button href="#" class="btn btn-light w-100">
                <div class="card w-100">

                        <h5 class="card-title"><%=notebook.getTitle()%></h5>
                        <p class="card-text"><%=notebook.getText()%></p>

                </div>
                </button>
                <% }%>
            </div>

        </div>


    </div>
    <div class="col-9">
        <form action="/createNoteServlet" method="post">

            <input class="input-group" name="title" type="text" placeholder="Title" style="width: 100%;margin-top: 1%">
            <textarea class="input-group" name="text" placeholder="Text" style="width: 100%; height: 100%;"></textarea>
            <br>
            <button class="btn btn-success" type="submit">Сохранить</button>
        </form>

    </div>
</div>

</body>
</html>
<%--<form action="/createNoteServlet" method="post">--%>

<%--    <div class="row">--%>
<%--        <div class="col-9">--%>
<%--            <input name="title" type="text" class="input-group" placeholder="Title">--%>
<%--            <br>--%>
<%--            <div class="form-group">--%>
<%--                <textarea name="text" placeholder="Text" class="form-control rounded-0" id="exampleFormControlTextarea1" rows="10"></textarea>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--        <br>--%>
<%--        <div class="col-3">--%>
<%--            <button type="submit" class="btn btn-primary">Создать заметку</button>--%>
<%--            <button type="submit" class="btn btn-primary" style="margin-right: 0%">Назад</button>--%>
<%--        </div>--%>

<%--    </div>--%>

<%--</form>--%>
