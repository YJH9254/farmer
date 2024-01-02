<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String scope = request.getParameter("scope");
	String foodValue = request.getParameter("food");	

	if (scope.equals("application")) {
		application.setAttribute("food", foodValue);
	} else if (scope.equals("session")) {
		session.setAttribute("food", foodValue);
	} else if (scope.equals("request")) {
		request.setAttribute("food", foodValue);
	} else if (scope.equals("page")) {
		pageContext.setAttribute("food", foodValue);
	}
	
	request.getRequestDispatcher("/attribute/index.jsp").forward(request, response);
%>