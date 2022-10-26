<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오전 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>액션태그 - setProperty</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <jsp:useBean id="person" class="com.bitc.jspchap07.Person" scope="request"></jsp:useBean>
    <jsp:setProperty name="person" property="id" value="20221026"></jsp:setProperty>
    <jsp:setProperty name="person" property="name" value="아이유"></jsp:setProperty>
    <p>아이디 : <%out.println(person.getId());%></p>
    <p>이름 : <% out.println(person.getName());%></p>
</body>
</html>
