<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 4:13
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
<%
    request.setCharacterEncoding("UTF-8");
    String userName = request.getParameter("userName");
    String userEmail = request.getParameter("userEmail");
    String userPhone = request.getParameter("userPhone");

    session.setAttribute("userName", userName);
    session.setAttribute("userEmail", userEmail);
    session.setAttribute("userPhone", userPhone);

    // 작업중이더라도 시간이 지나면 날아간다.
    session.setMaxInactiveInterval(30);

    response.sendRedirect("session07_result.jsp");
%>
</body>
</html>
