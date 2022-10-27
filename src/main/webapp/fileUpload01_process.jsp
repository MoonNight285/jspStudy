<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="org.apache.commons.fileupload.DiskFileUpload" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>파일 업로드</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String fileUploadPath = "C:\\java505\\upload";

        DiskFileUpload upload = new DiskFileUpload();
        List items = upload.parseRequest(request);
        // 반복 가능한 객체로 생성
        Iterator params = items.iterator();

        // hasNext() : 다음 데이터가 존재하는지 확인
        while(params.hasNext()) {
            // next() : 다음 데이터를 가져옴
            FileItem fileItem = (FileItem) params.next();

            // 폼필드로 되어있는지 확인 => 체크박스, 텍스트필드 그런타입인지 확인하는것
            if(!fileItem.isFormField()) {
                String fileName = fileItem.getName();
                fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
                File file = new File(fileUploadPath + "/" + fileName);
                fileItem.write(file);
            }
        }
    %>
</body>
</html>
