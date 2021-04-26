<%--
  Created by IntelliJ IDEA.
  User: Echo
  Date: 13.03.2021
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <link href="WEB-INF/style/login.css">

    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
<br>
<br>

<center>
    <div style="text-align: center">
        <h1>Admin Login</h1>
        <form action="/loginServlet" method="post">

            <input name="username" size="30" placeholder="Username"/>
            <br><br>
            <input type="password" name="password" size="30" placeholder="Password" />
            <br>${message}
            <br><br>
            <button type="submit">Login</button>
        </form>
    </div>
</center>

<br>
<br>
<br>
<br>

<jsp:include page="footer.jsp"></jsp:include>
</body>




<script type="text/javascript">

    $(document).ready(function() {
        $("#loginForm").validate({
            rules: {
                username: {
                    required: true,
                    username: true
                },

                password: "required",
            },

            messages: {
                username: {
                    required: "Please enter email",
                    username: "Please enter a valid username address"
                },

                password: "Please enter password"
            }
        });

    });
</script>
</html>
