<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오전 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>쿠키 사용하기</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%
      Cookie[] cookies = request.getCookies();

      // JSESSIONID의 쿠키까지 삭제하면 모든 쿠키가 사라져서 Null 객체에 접근해서 오류발생, 원래는 삭제해야한다.
       for (int i = 0; i < cookies.length; ++i) {
          if(!cookies[i].getName().equals("JSESSIONID")) {
              cookies[i].setMaxAge(0);
              response.addCookie(cookies[i]);
          }
      }
    %>

    <a href="cookie01.jsp" alt="">쿠키 저장</a>
    <a href="cookie02.jsp" alt="">쿠키 상태 확인</a>
</body>
</html>
