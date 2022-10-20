<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>내장객체</title>
</head>
<body>
    <%
        // 만약 한글이 깨질 경우 추가
        request.setCharacterEncoding("UTF-8");
        String userName = request.getParameter("userName");
    %>

    <h3>전송된 이름 : <%=userName%></h3>
</body>
</html>
