<%@ page language="java" contentType="text/html; charset=EUC-KR" 
pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>�Խù� �ۼ�</title>
</head>
<body>
    <h1>�Խù� �ۼ�</h1>
    <form method="post" action="savePost.jsp">
        <label for="title">����:</label>
        <input type="text" id="title" name="title"><br><br>
        <label for="content">����:</label><br>
        <textarea id="content" name="content" rows="4" cols="50"></textarea><br><br>
        <input type="submit" value="�ۼ�">
    </form>
</body>
</html>