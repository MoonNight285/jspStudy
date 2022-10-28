<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-28
  Time: 오후 3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp"%>
<%
  request.setCharacterEncoding("UTF-8");

  String title = request.getParameter("title");
  String userId = request.getParameter("userId");
  String content = request.getParameter("content");

  PreparedStatement pstmt = null;

  try {
    String sql = "INSERT INTO board(title, content, user_id, create_date) " +
            "VALUES(?, ?, ?, NOW())";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, title);
    pstmt.setString(2, content);
    pstmt.setString(3, userId);
    pstmt.executeUpdate();
  } catch(SQLException ex) {
    out.println("SQLException : " + ex.getMessage());
  } finally {
    if(pstmt != null) {
      pstmt.close();
    }

    if(conn != null) {
      conn.close();
    }
  }

  response.sendRedirect("board.jsp");
%>

