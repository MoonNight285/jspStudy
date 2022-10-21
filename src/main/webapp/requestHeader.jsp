<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오전 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>request 내장객체</title>
</head>
<body>
    <h2>3. 요청 헤더 정보 출력하기</h2>
    <%
        Enumeration headers = request.getHeaderNames();
        while (headers.hasMoreElements()) {
            String headerName = (String)headers.nextElement();
            String headerValue =request.getHeader(headerName);
            out.print("헤더명 : " + headerName + ", 헤더값 : " + headerValue + "<br>");
        }
    %>
</body>
</html>
