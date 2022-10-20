<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>내장객체 - request</title>
</head>
<body>
    <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
    <ul>
    <%-- get, post 방식 --%>
    <%-- get : 웹브라우저의 주소창에 데이터를 함께 전송하는 방식, 속도가 빠르다. --%>
    <%-- post : 데이터를 웹페이지의 Body에 저장하여 전송하는 방식, 암호화되어 있다. get에 비해 느림 --%>
      <li>데이터 전송 방식 : <%=request.getMethod()%></li>
        <%--전체 주소--%>
      <li>URL : <%=request.getRequestURL()%></li>
        <%--리소스의 주소--%>
      <li>URI : <%=request.getRequestURI()%></li>
        <%-- 통신 규약 종류 --%>
      <li>프로토콜 : <%=request.getProtocol()%></li>
        <%-- 현재 접속한 서버의 이름을 알려준다. --%>
      <li>서버명 :  <%=request.getServerName()%></li>
        <%--  현재 접속한 서버의 포트 번호를 알려준다. --%>
      <li>서버 포트 : <%=request.getServerPort()%></li>
        <%-- 현재 접속한 클라이언트의 ip 주소 --%>
      <li>클라이언트 IP 주소 : <%=request.getRemoteAddr()%></li>
        <%-- get방식으로 접속시 주소뒤에 추가된 데이터 부분을 의미한다. --%>
      <li>쿼리스트링 : <%=request.getQueryString()%></li>
        <%-- 클라이언트에서 서버로 전송한 데이터 가져오기 --%>
        <%-- getParameter()를 통해서 전송된 데이터의 이름(변수명)은 html의 input 태그에 설정한 name 속성값 --%>
        <%-- getParameter(String name) : 클라이언트가 전송한 대상의 name인 값을 가져온다. --%>
        <%-- getParameterValues(String name) : 클라이언트가 전송한 이름이 name인 배열 형태의 데이터를 가져옴 --%>
        <%-- getParameterNames() : 클라이언트가 전송한 모든 데이터를 Enumberation 객체 타입으로 가져온다. --%>
        <%-- getParameterMap() : 클라이언트가 전송한 모든 데이터를 HashMap 방식으로 가져온다. --%>
      <li>전송된 값 1 : <%=request.getParameter("eng")%></li>
      <li>전송된 값 2 : <%=request.getParameter("kor")%></li>
    </ul>
</body>
</html>
