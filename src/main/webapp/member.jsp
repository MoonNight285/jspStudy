<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 3:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입 페이지</title>
<%-- 간단한 회원 가입 페이지를 작성하고 가입된 회원 정보를 출력하는 페이지를 작성하세요. --%>
<%-- 필수 정보 : id, 비밀번호, 이름, 전화번호, 이메일주소, 집 주소, 관심분야 체크박스 5개 --%>
    <style>
        #outerField {
            width: 500px;
            margin: 10px;
        }
        label {
            margin-right: 5px;
        }
        input {
            margin-bottom: 10px;
        }
        #innerField {
            width: 300px;
        }
        #btn {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <fieldset id="outerField">
        <h1>회원가입을 환영합니다!</h1>
        <form action="memberProcess.jsp" method="post">
            <label for="id">아이디 : </label><input type="text" id="id" name="Id" value="" placeholder="아이디를 입력하세요"><br>
            <label for="password">비밀번호 : </label><input type="password" id="password" name="pwd" value="" placeholder="암호를 입력하세요."><br>
            <label for="name">이름 : </label><input type="text" id="name" name="userName" value="" placeholder="이름을 입력하세요."><br>
            <label for="telephone">전화번호 : </label><input type="tel" id="telephone" name="tel" value="" placeholder="전화번호를 입력하세요."><br>
            <label for="email">이메일 주소 : </label><input type="email" id="email" name="email" placeholder="이메일을 입력하세요."><br>
            <label for="addr">집 주소 : </label><input type="text" id="addr" name="addr" placeholder="집 주소를 입력하세요."><br>
            <fieldset id="innerField">
                <legend>취미를 선택하세요.</legend>
                <input type="checkbox" name="hobby" value="reading">독서
                <input type="checkbox" name="hobby" value="running">달리기
                <input type="checkbox" name="hobby" value="game">게임
                <input type="checkbox" name="hobby" value="stock">주식
                <input type="checkbox" name="hobby" value="cooking">요리
            </fieldset>
            <input id="btn" type="submit" value="서버로 전송">
        </form>
    </fieldset>
</body>
</html>
