<%@ page language="java" contentType="text/html; charset=EUC-KR" 
pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="chap10.post.Post" %>
<%
    List<Post> posts = (List<Post>) getServletContext().getAttribute("posts");
    String title = request.getParameter("title");
    String content = "";

    for (Post post : posts) {
        if (post.getTitle().equals(title)) {
            content = post.getContent();
            break;
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시물 내용</title>
</head>
<body>
    <h1>게시물 내용</h1>
    <strong>제목:</strong> <%= title %><br/><br/>
    <strong>내용:</strong> <%= content %><br/><br/>
</body>
</html>