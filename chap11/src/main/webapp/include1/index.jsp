<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- jsp:include는 forward처럼 webapp밑의 경로를 사용해야 한다 --%>
<jsp:include page="./top.jsp"/>

<h1>Index.jsp</h1>

<a href="./index.jsp">인덱스</a> /
<a href="./menu.jsp">메뉴</a> 

<p>
	Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
	Culpa tempora mollitia nesciunt quia distinctio architecto 
	voluptate et temporibus saepe facilis rem cupiditate quasi 
	laborum neque eaque rerum veritatis maxime consequatur.
</p>

<p>자바스크립트는 클라이언트에서 작동하는 언어이기 때문에 3분할의 영향을 받지 않는다</p>

<p>
	결과는 하나로 합쳐지지만 다른 페이지에서 완성된 결과가 합쳐지는 것이기 때문에
	각 jsp 페이지를 완성하기 위한 재료는 각자의 페이지에 따로 존재해야 한다 (ex: jstl, page...)
</p>

<c:forEach begin="0" end="9" var="i">
	<p>paragraph${i}, ${fruit}</p>
</c:forEach>

<jsp:include page="./bottom.jsp"/>