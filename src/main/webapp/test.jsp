<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오전 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="page_errorPage.jsp" %>
<%@ page import="java.util.Date"%>
<%!
    String str1 = "JSP";
    String str2 = "안녕하세요..";
%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>hello jsp</title>
</head>
<body>
    <h2>처음 만들어보는 <%=str1%></h2> 스크립트 요소(표현식)
    <p>
        <%
            out.println(str2 + str1 + "입니다. 열공합시다.");
        %>
    </p>
    <p>Today is <%=new Date()%></p>
    <%
        String str = null;
        out.println(str.toString());
    %>
</body>
</html>
