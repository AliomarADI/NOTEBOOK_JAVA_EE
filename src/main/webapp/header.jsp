<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.example.NOTEBOOK.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Echo
  Date: 23.04.2021
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</head>
<body>


    <header>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-dark text-white">
            <div class="container-fluid">
                <button
                        class="navbar-toggler"
                        type="button"
                        data-mdb-toggle="collapse"
                        data-mdb-target="#navbarExample01"
                        aria-controls="navbarExample01"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse text-white" >
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 text-white">
                        <li class="nav-item active">
                            <a class="nav-link text-white" aria-current="page" href="index.jsp">NotebookOnline</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" style="float: right" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" style="float: right" href="register.jsp">Registration</a>
                        </li>

                    </ul>
                    <li class="nav-item text-white" style="float: right">
                        <jsp:include page="TagLibTime.jsp"></jsp:include>
                    </li>
                </div>
            </div>
        </nav>
        <!-- Navbar -->

    </header>



</body>
</html>
