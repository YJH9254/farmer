<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- jsp:include�� forwardó�� webapp���� ��θ� ����ؾ� �Ѵ� --%>
<jsp:include page="./top.jsp"/>

<h1>Index.jsp</h1>

<a href="./index.jsp">�ε���</a> /
<a href="./menu.jsp">�޴�</a> 

<p>
	Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
	Culpa tempora mollitia nesciunt quia distinctio architecto 
	voluptate et temporibus saepe facilis rem cupiditate quasi 
	laborum neque eaque rerum veritatis maxime consequatur.
</p>

<p>�ڹٽ�ũ��Ʈ�� Ŭ���̾�Ʈ���� �۵��ϴ� ����̱� ������ 3������ ������ ���� �ʴ´�</p>

<p>
	����� �ϳ��� ���������� �ٸ� ���������� �ϼ��� ����� �������� ���̱� ������
	�� jsp �������� �ϼ��ϱ� ���� ���� ������ �������� ���� �����ؾ� �Ѵ� (ex: jstl, page...)
</p>

<c:forEach begin="0" end="9" var="i">
	<p>paragraph${i}, ${fruit}</p>
</c:forEach>

<jsp:include page="./bottom.jsp"/>