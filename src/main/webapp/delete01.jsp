<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-28
  Time: 오후 12:11
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
<%-- 문제1 - Statement를 사용해서 delete를 실행하는 프로그램을 작성하세요. --%>
<%-- delete01.jsp 파일은 사용자 id와 비밀번호를 입력받는 form으로 생성 --%>
<%-- delete01_process.jsp 파일은 사용자가 입력한 내용을 바탕으로 sql 쿼리를 실행 --%>
<%-- 입력한 id가 없으면, '지정한 사용자가 없습니다.' 출력 --%>
<%-- 비밀번호가 틀리면 '비밀번호가 틀렸습니다.' 출력 --%>
  <form action="delete01_process.jsp" method="post">
    <label for="user-id">아이디</label>
    <input type="text" id="user-id" name="userId"><br>
    <label for="user-pw">비밀번호</label>
    <input type="password" id="user-pw" name="userPw"><br>
    <label for="user-name">이름</label>
    <input type="text" id="user-name" name="userName"><br>
    <button type="submit">삭제</button>
  </form>
</body>
</html>
