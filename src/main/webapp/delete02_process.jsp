<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-28
  Time: 오후 12:34
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
        request.setCharacterEncoding("UTF-8");
        String targetId = request.getParameter("userId");
        PreparedStatement pstmt = null;
        String query = "DELETE FROM member WHERE id = ? ";

        try {
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, targetId);
            pstmt.executeUpdate();
            out.println("정상적으로 삭제되었습니다.");
        } catch (SQLException ex) {
            out.println(ex.getMessage());
        } finally {
            if(pstmt != null) {
                pstmt.close();
            }

            if(conn != null) {
                conn.close();
            }
        }
    %>
</body>
</html>
