<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오전 11:13
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
  <table border="1">
    <tr>
      <th>요청 파라미터 이름</th>
      <th>요청 파라미터 값</th>
    </tr>

  <%
    request.setCharacterEncoding("UTF-8");
    Enumeration paramNames = request.getParameterNames();

    while (paramNames.hasMoreElements()) {
      String name = paramNames.nextElement().toString();
      out.print("<tr><td>" + name + "</td>\n");
      String paramValue = request.getParameter(name);
      out.print("<td>" + paramValue + "</td></tr>\n");
    }
  %>
  </table>
</body>
</html>
