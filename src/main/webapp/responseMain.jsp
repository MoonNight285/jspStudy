<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오전 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>내장객체 response</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <h2>.1 로그인 폼</h2>
    <%
        String loginErr = request.getParameter("loginErr");
        if (loginErr != null) {
            out.print("로그인 실패");
        }
    %>

    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-6 mx-auto">
                <div class="border rounded p-3">
                    <form action="responseLogin.jsp" method="post">
                        <div class="d-grid gap-3">
                            <div>
                                <label class="form-label">아이디 : </label>
                                <input type="text" class="form-control" id="user-id" name="userId" placeholder="아이디를 입력하세요.">
                            </div>

                            <div>
                                <label class="form-label">비밀번호 : </label>
                                <input type="password" class="form-control" id="user-pw" name="userPw" placeholder="비밀번호를 입력하세요.">
                            </div>

                            <div>
                                <button class="btn btn-primary" type="submit">로그인</button>
                                <button class="btn btn-secondary" type="reset">취소</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
