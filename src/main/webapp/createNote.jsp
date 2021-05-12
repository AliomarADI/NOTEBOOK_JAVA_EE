<%--
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
<body style="background-color: rgba(249,249,249,1)">
<div class="row">
    <div style="background-color: rgba(11,11,11,1); width: 100%; height: auto">
        <br>
        <span style="margin-left: 5%" class="text-white">БЛОКНОТ ОНЛАЙН</span>
        <a href="index.jsp" style="float: right;margin-right: 1% ;text-decoration-line: none" class="text-white">ВЫЙТИ</a>
        <br>
        <br>
    </div>
</div>
<%--        Теперь тело         --%>
<div class="row">

    <div class="col-3">
        <div class="container">
            <br>
            <button class="btn btn-primary" style="width: 70%">+ Создать новую запись</button>
        </div>
        <hr style="width: 102.5%">
        <div class="container">
            <div class="col" style="border: black 1px solid">
                <div class="card w-100">
                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                    </div>
                </div>
            </div>

        </div>


    </div>
    <div class="col-9">
        <input type="text" placeholder="Title" style="width: 100%;margin-top: 1%">
        <textarea placeholder="Text" style="width: 100%; height: 260%;"></textarea>
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
