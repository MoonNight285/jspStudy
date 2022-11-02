<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-11-02
  Time: 오전 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%@ include file="dbConn.jsp"%>
<%
  int number = Integer.parseInt(request.getParameter("number"));
  String sql = "UPDATE board SET deleted_yn = 'Y' WHERE number = ?";
  PreparedStatement pstmt = null;

  try {
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, number);
    pstmt.executeUpdate();
  } catch (SQLException ex) {
    out.print(ex.getMessage());
  } finally {
    if(pstmt != null) {pstmt.close();}
    if(conn != null) {conn.close();}
  }

  response.sendRedirect("board.jsp");
%>
