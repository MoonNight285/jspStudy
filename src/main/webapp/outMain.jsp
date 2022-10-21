<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오전 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>out 내장객체</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%
      out.print("출력되지 않는 텍스트");
      out.clearBuffer();

      out.print("<h2>out 내장 객체</h2>");

      out.print("출력 버퍼 크기 : " + out.getBufferSize() + "<br>");
      out.print("남은 버퍼 크기 : " + out.getRemaining() + "<br>");

      out.flush();
      out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br>");

      out.print(1);
      out.print(false);
      out.print('가');
      // print(String str) : 설정된 값을 웹 브라우저에 출력
        // println(String str) : 설정된 값을 웹 브라우저에 출력, 줄바꿈 기능이 동작하지 않는다.
        // newLine() : 줄바꿈을 출력
        // getBufferSize() : 현재 출력 버퍼 사이즈를 가져온다.
        // getRemaining() : 현재 남아있는 버퍼 사이즈를 가져온다.
        // clear() : 현재 출력버퍼에 저장되어 있는 내용을 웹 브라우저에 출력하지 않고 비운다. 버퍼가 이미 flush 되었으면 IOException 발생
        // clearBuffer() : 위와 동일하나 IOException이 발생하지 않는다.
        // flush() : 출력 버퍼에 저장된 내용을 즉시 웹 브라우저로 출력
        // isAutoFlush() : 출력 버퍼가 채워졌을 경우 동작을 결정
    %>
</body>
</html>
