<%@ page language="java" contentType="text/html; charset=EUC-KR" 
pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="chap10.post.Post" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>�Խù� ���</title>
</head>
<body>
    <h1>�Խù� ���</h1>
    <ul>
        <% 
            List<Post> posts = (List<Post>) getServletContext().getAttribute("posts");
            if (posts != null && !posts.isEmpty()) {
                for (Post post : posts) {
        %>
        <li>
            <a href="showPost.jsp?title=<%= post.getTitle() %>">
                <strong>����:</strong> <%= post.getTitle() %>
            </a><br/><br/>
        </li>
        <% 
                }
            } else {
        %>
        <li>�Խù��� �����ϴ�.</li>
        <% } %>
    </ul>
    <a href="writePost.jsp">�ۼ��ϱ�</a>
</body>
</html>