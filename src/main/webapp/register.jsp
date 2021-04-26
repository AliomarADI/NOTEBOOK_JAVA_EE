<%--
  Created by IntelliJ IDEA.
  User: Echo
  Date: 23.04.2021
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <script>
        function validate()
        {
            var username = document.form.username.value;
            var password = document.form.password.value;
            var conpassword= document.form.conpassword.value;

            if (username==null || username=="")
            {
                alert("Username can't be blank");
                return false;
            }
            else if(password.length<6)
            {
                alert("Password must be at least 6 characters long.");
                return false;
            }
            else if (password!=conpassword)
            {
                alert("Confirm Password should match with the Password");
                return false;
            }
        }
    </script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
<br>
<br>

<center>
    <center><h2>Java Registration application using MVC and PostgreSQL </h2></center>
    <form name="form" action="/registerServlet" method="post" onsubmit="return validate()">
        <table align="center">


            <tr>
                <td>Username</td>
                <td><input type="text" name="username" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" /></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><input type="password" name="conpassword" /></td>
            </tr>
            <tr>
                <td><%=(request.getAttribute("errMessage") == null) ? ""
                        : request.getAttribute("errMessage")%></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="register">
                    <input
                            type="reset" value="Reset"></td>
            </tr>
        </table>
    </form>
</center>

<br>
<br>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
