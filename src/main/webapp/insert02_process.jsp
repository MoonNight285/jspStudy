<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-28
  Time: 오전 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DB 사용하기</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%@ include file="dbConn.jsp"%>

    <%
      request.setCharacterEncoding("UTF-8");

      String userId = request.getParameter("userId");
      String userPw = request.getParameter("userPw");
      String userNm = request.getParameter("userName");

      Statement stmt = null;

      try {
        String sql = "INSERT INTO member(id, passwd, name)";
        sql += "VALUES(\'" + userId + "\',\'" + userPw + "\',\'" + userNm + "\')";

        stmt = conn.createStatement();
        stmt.executeUpdate(sql);
        out.println("member 테이블에 데이터를 추가했습니다.");
      } catch(SQLException ex) {
        out.println("member 테이블에 데이터 추가를 실패하였습니다.");
        out.println("SQLException : " + ex.getMessage());
      } finally {
        if (stmt != null) {
          stmt.close();
        }

        if (conn != null) {
          conn.close();
        }
      }
    %>
</body>
</html>
