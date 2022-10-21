<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>액션태그 forward</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<%-- sendRedirect()는 완전히 정보까지 다른 페이지로 넘어가나 forward 같은경우는 기존의 페이지의 정보는 남아있다.--%>
<body>
    <h3>이 파일은 first.jsp 파일입니다.</h3>
    <jsp:forward page="second.jsp"></jsp:forward>
    <p>--- first.jsp의 페이지 ---</p>
</body>
</html>
