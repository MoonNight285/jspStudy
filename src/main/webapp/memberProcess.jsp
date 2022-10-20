<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 3:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보 페이지</title>
    <%-- 필수 정보 : id, 비밀번호, 이름, 전화번호, 이메일주소, 집 주소, 관심분야 체크박스 5개 --%>
</head>
<body>
    <h1>가입된 회원정보를 출력합니다.</h1>
    <%
        request.setCharacterEncoding("UTF-8");
        out.println("회원의 아이디 : " + request.getParameter("Id") + "<br>");
        out.println("회원의 비밀번호 : " + request.getParameter("pwd") + "<br>");
        out.println("회원의 이름 : " + request.getParameter("userName") + "<br>");
        out.println("회원의 전화번호 : " + request.getParameter("tel") + "<br>");
        out.println("회원의 이메일주소 : " + request.getParameter("email") + "<br>");
        out.println("회원의 집 주소 : " + request.getParameter("addr") + "<br>");
        out.println("회원의 관심분야 목록 : ");
        String[] hobbies = request.getParameterValues("hobby");
        for(String hobby : hobbies) {
            out.println(hobby + ", ");
        }
    %>
</body>
</html>
