<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-11-02
  Time: 오전 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상세 글 읽기 페이지</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        window.addEventListener("DOMContentLoaded", function () {
           const btnList = document.querySelector("#btn-list");
           btnList.addEventListener('click', function () {
                history.back(); // 웹 브라우저의 캐싱된 데이터를 읽어오는 함수라서 DB 변경 사항이 있다면 다시 새로고침이 필요
           });
        });
    </script>
</head>
<body>
    <header class="container mt-3">
        <div class="p-5 mb-4 bg-light rounded-3">
            <div class="container-fluid py-4">
                <h1 class="text-center">상세 글 읽기 페이지</h1>
            </div>
        </div>
    </header>

    <%@ include file="dbConn.jsp"%>
    <%
        // 게시판 목록 페이지에서 넘겨받은 글 번호
        int number = Integer.parseInt(request.getParameter("number"));

        String title = "";
        String content = "";
        String userId = "";
        String createDate = "";
        String updateDate = "";
        int cnt = 0;

        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            String sql = "UPDATE board SET cnt = cnt + 1 WHERE number = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, number);
            pstmt.executeUpdate();

            sql = "SELECT number, title, content, user_id, create_date, update_date, cnt FROM board " +
                    "WHERE number = ?;";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, number);
            rs = pstmt.executeQuery();

            if(rs.next()) {
                title = rs.getString("title");
                content = rs.getString("content");
                userId = rs.getString("user_id");
                createDate = rs.getString("create_date");
                updateDate = rs.getString("update_date");
                cnt = rs.getInt("cnt");
            }
        } catch (SQLException e) {
            out.print(e.getMessage());
        } finally {
            if (rs != null) { rs.close(); }
            if (pstmt != null) { pstmt.close(); }
            if (conn != null) { conn.close(); }
        }
    %>

    <main>
        <div class="row">
            <div class="col-sm-6 mx-auto">
                <form action="boardUpdate_process.jsp" method="post">
                <div class="d-grid gap-3">
                    <div class="form-floating my-3">
                        <input type="text" class="form-control" id="number" name="number" placeholder="글번호를 입력하세요." readonly
                            value="<%=number%>">
                        <label for="title" class="form-label">Number</label>
                    </div>
                </div>

                <div class="d-grid gap-3">
                    <div class="form-floating my-3">
                        <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요."
                            value="<%=title%>">
                        <label for="title" class="form-label">Title</label>
                    </div>
                </div>
                <div class="d-grid gap-3 my-3">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="user-id" name="userId" placeholder="ID를 입력하세요" disabled
                            value="<%=userId%>">
                        <label for="user-id" class="form-label">ID</label>
                    </div>
                </div>

                <div class="d-grid gap-3">
                    <div class="form-floating my-3">
                        <input type="text" class="form-control" id="create-date" name="createDate" placeholder="날짜를 입력하세요."
                            value="<%=createDate%>">
                        <label for="create-date" class="form-label">Date</label>
                    </div>
                </div>

                <div class="d-grid gap-3">
                    <div class="form-floating my-3">
                        <input type="text" class="form-control" id="board-cnt" name="boardCnt" placeholder="조회수를 입력하세요." readonly
                            value="<%=cnt%>">
                        <label for="board-cnt" class="form-label">Cnt</label>
                    </div>
                </div>

                <div class="form-floating my-3">
                    <textarea class="form-control" id="content" name="content" placeholder="내용을 입력하세요"><%=content%></textarea>
                    <label for="content" class="form-label">Contents...</label>
                </div>
                <div class="my-3 row">
                    <div class="col-sm">
                        <button class="btn btn-secondary" type="button" id="btn-list">목록으로</button>
                    </div>
                    <div class="col-sm d-flex justify-content-end">
                            <button class="btn btn-warning me-2" type="submit">수정</button>
                        </form>
                        <form action="boardDelete_process.jsp" method="get">
                            <input type="hidden" name="number" value="<%=number%>">
                            <button id="btn-back" class="btn btn-danger" type="submit">삭제</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="container-fluid mt-5 p-5 border">
        <p class="lead text-muted text-center">made by bitc java 505</p>
    </footer>
</body>
</html>
