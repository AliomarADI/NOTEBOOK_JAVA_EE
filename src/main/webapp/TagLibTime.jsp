<%--
  Created by IntelliJ IDEA.
  User: Echo
  Date: 23.04.2021
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%@ page import="java.util.Date" %>
<% Date date = new Date(); %>
Today is: <%= date.getDate() + "." + (date.getMonth()+1) + "." + (date.getYear()-100)%>
</body>
</html>
