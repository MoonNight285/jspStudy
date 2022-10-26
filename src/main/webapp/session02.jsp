<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 3:00
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
<%--웹은 각각의 페이지별로 다른 어플리케이션이다.--%>
<%--각각의 웹 페이지는 기본적으로 데이터를 공유하지 않으나 동일한 세션 ID일때 세션은 웹 서버 내에 저장공간을 마련하여
웹 서버와 접속이 끊어지기 전까지 계속 유지된다.--%>
<%--다른 페이지로 이동한다해도 세션에 저장된 데이터는 공유가 된다.--%>
<body>
  <%
    String userId = (String)session.getAttribute("userId");
    String userPw = (String)session.getAttribute("userPw");

    out.println("설정된 세션의 속성 값 : " + userId + "<br>");
    out.println("설정된 세션의 속성 값 : " + userPw);
  %>
</body>
</html>
