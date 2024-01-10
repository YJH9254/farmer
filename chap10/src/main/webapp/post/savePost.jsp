<%@ page language="java" contentType="text/html; charset=EUC-KR" 
pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="chap10.post.Post" %>
<%
    List<Post> posts = (List<Post>) getServletContext().getAttribute("posts");
    if (posts == null) {
        posts = new ArrayList<>();
        getServletContext().setAttribute("posts", posts);
    }

    String title = request.getParameter("title");
    String content = request.getParameter("content");

    if (title != null && content != null && !title.isEmpty() && !content.isEmpty()) {
        Post newPost = new Post(title, "", content); // 비밀번호는 예시로 빈 문자열로 설정
        posts.add(newPost);
    }

    response.sendRedirect("showPosts.jsp");
%>