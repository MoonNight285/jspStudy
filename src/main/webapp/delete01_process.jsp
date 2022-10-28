<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-28
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
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
  <%@ include file="dbConn.jsp"%>
  <%
    Statement statement = null;
    ResultSet rs = null;

    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");
    String userNm = request.getParameter("userName");
    String query = "SELECT * FROM member WHERE id = \'" + userId + "\'";

    try {
        statement = conn.createStatement();
        rs = statement.executeQuery(query);

        if(rs.next()) {
            String targetPw = rs.getString("passwd");
            String targetName = rs.getString("name");

            if(userPw.equals(targetPw) && userNm.equals(targetName)) {
                String delQuery = "DELETE FROM member WHERE id = \'" + userId + "\'";
                statement.executeUpdate(delQuery);
                out.println("정상적으로 삭제되었습니다.");
            }
        } else {
            out.println("지정한 사용자가 없습니다.");
        }

    } catch(SQLException ex) {
        out.println(ex.getMessage());
    } finally {
        if(rs != null) { rs.close();}
        if(statement != null) {statement.close();}
    }
  %>
</body>
</html>
