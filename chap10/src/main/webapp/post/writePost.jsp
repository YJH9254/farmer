<%@ page language="java" contentType="text/html; charset=EUC-KR" 
pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>게시물 작성</title>
</head>
<body>
    <h1>게시물 작성</h1>
    <form method="post" action="savePost.jsp">
        <label for="title">제목:</label>
        <input type="text" id="title" name="title"><br><br>
        <label for="content">내용:</label><br>
        <textarea id="content" name="content" rows="4" cols="50"></textarea><br><br>
        <input type="submit" value="작성">
    </form>
</body>
</html>