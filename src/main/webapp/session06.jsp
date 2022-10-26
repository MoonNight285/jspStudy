<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 3:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <h3>----- 세션 유효 시간 변경 전 -----</h3>
  <%
    int time = session.getMaxInactiveInterval() / 60;
    out.println("세션 유효 시간 : " + time + "분<br>");
  %>
  <br>
  <h3>----- 세션 유효 시간 변경 후 -----</h3>
  <%
    session.setMaxInactiveInterval(24 * 60 * 60);
    time = session.getMaxInactiveInterval() / 60;
    out.println("세션 유효 시간 : " + time + "분<br>");
  %>
</body>
</html>
