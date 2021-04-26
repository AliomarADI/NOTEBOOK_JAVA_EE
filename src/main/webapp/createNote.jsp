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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</head>
<body class="bg-dark">
<br><br>
    <div class="container bg-dark" >
        <h3 class="text-white">Create Note</h3>
        <br>
        <form action="/createNoteServlet" method="post">

            <div class="raw">
                <div class="col-9">
                    <input name="title" type="text" class="input-group" placeholder="Title">
                    <br>
                    <div class="form-group">
                        <textarea name="text" placeholder="Text" class="form-control rounded-0" id="exampleFormControlTextarea1" rows="10"></textarea>
                    </div>

                </div>
                <br>
                <div class="col-3">
                    <button type="submit" class="btn btn-primary">Создать заметку</button>
                    <button type="submit" class="btn btn-primary" style="margin-right: 0%">Назад</button>
                </div>

            </div>

        </form>

    </div>
</body>
</html>
