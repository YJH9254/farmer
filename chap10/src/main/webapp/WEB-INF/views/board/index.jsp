<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ���</title>
</head>
<body>
	
	<h1>Board List!</h1>
	
	<button id="writeBtn">�۾���</button>
	
	<c:url value="/resources/board/js/index.js" var="indexJS"/>
	<c:url value="./write" var="writePageURL"/>
	
	<script>
		const writePageURL = '${writePageURL}';
	</script>
	<script src="${indexJS}"></script>
	
</body>
</html>