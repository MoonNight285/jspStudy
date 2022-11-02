<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-11-02
  Time: 오전 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%@ include file="dbConn.jsp"%>
<%
    request.setCharacterEncoding("UTF-8");
    int number = Integer.parseInt(request.getParameter("number"));
    String title = request.getParameter("title");
    int cnt = 0;
    String content = request.getParameter("content");

    String sql1 = "SELECT cnt FROM board WHERE number = ?";
    String sql2 = "UPDATE board SET title = ?, content = ?, cnt = ?, update_date = NOW() WHERE number = ?";
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        pstmt = conn.prepareStatement(sql1);
        pstmt.setInt(1, number);
        rs = pstmt.executeQuery();

        if(rs.next()) {
            cnt = rs.getInt("cnt");
        }
    } catch(SQLException ex) {
        ex.getMessage();
    } finally {
        if(rs != null) {rs.close();}
        if(pstmt != null) {pstmt.close();}
    }

    try{
        pstmt = conn.prepareStatement(sql2);
        pstmt.setString(1, title);
        pstmt.setString(2, content);
        pstmt.setInt(3, cnt + 1);
        pstmt.setInt(4, number);
        pstmt.executeUpdate();
    } catch(SQLException ex) {
        ex.getMessage();
    } finally {
        if(pstmt != null) {pstmt.close();}
    }

    response.sendRedirect("board.jsp");
%>