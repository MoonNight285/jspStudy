<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 3:35
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
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String gender = request.getParameter("gender");
        String[] favo = request.getParameterValues("favo");
        String favoStr = "";

        if(favo != null) {
            for(int i = 0; i < favo.length; ++i) {
                favoStr += favo[i] + " ";
            }
        }

        String intro = request.getParameter("intro".replace("\r\n", "<br>"));
    %>

    <ul>
        <li>아이디 : <%=id%></li>
        <li>성별 : <%=gender%></li>
        <li>관심사항 : <%=favoStr%></li>
        <li>자기소개 : <%=intro%></li>
    </ul>
</body>
</html>
