<%@ page language="java" contentType="text/html; charset=EUC-KR" 
pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="chap10.post.Post" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>게시물 목록</title>
</head>
<body>
    <h1>게시물 목록</h1>
    <ul>
        <% 
            List<Post> posts = (List<Post>) getServletContext().getAttribute("posts");
            if (posts != null && !posts.isEmpty()) {
                for (Post post : posts) {
        %>
        <li>
            <a href="showPost.jsp?title=<%= post.getTitle() %>">
                <strong>제목:</strong> <%= post.getTitle() %>
            </a><br/><br/>
        </li>
        <% 
                }
            } else {
        %>
        <li>게시물이 없습니다.</li>
        <% } %>
    </ul>
    <a href="writePost.jsp">작성하기</a>
</body>
</html>