<%--
  Created by IntelliJ IDEA.
  User: Echo
  Date: 26.04.2021
  Time: 5:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <title>NotebookOnline</title>
    <link href="WEB-INF/style/index.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</head>
<body>

<div class="container">
    <div class="raw">
        <div class="col-4"></div>
        <div class="col-4">
            <div class="card">
                <h5 class="card-header">Предупреждение</h5>
                <div class="card-body">
                    <h5 class="card-title">О выходе</h5>
                    <p class="card-text">Вы действительно хотите выйти?</p>
                    <form action="/logoutServlet" method="post">
                        <button  class="btn btn-warning">Да</button>
                    </form>

                    <a href="index.jsp"> <button  class="btn btn-light">Нет</button></a>


                </div>
            </div>
        </div>
        <div class="col-4"></div>
    </div>
</div>

</body>
</html>
