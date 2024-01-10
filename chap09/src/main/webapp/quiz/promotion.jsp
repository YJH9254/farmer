<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
</head>
<body>
	<c:url value="/assets/img/woogi.jpg" var="woogiImg"/>
	<img src="${woogiImg}" alt="���" width="200" height="auto;"/>
	<div>
		<input id="nm_pm_chk" name="nm_pm" type="checkbox" />30�ʵ��� ������ ����
	</div>
	
	<script>
		const nmPm = document.querySelector('#nm_pm_chk');
		
		nmPm.addEventListener('click', (e) => {
			// üũ�ڽ��� checked��� �Ӽ��� ���� üũ ���θ� �Ǵ��� �� �ִ�
			console.log(nmPm.checked);
			
			if (nmPm.checked) {
				console.log('üũ�� �Ǿ����ϴ�!');
				
				documnet.cookie = "nmpm2=1; max-age=30; path=/chap09/quiz";
				window.close();
				
				// location.href = 'nmpm.jsp'; // ���������� ������ 30��¥�� ��Ű �߰�
			}
		});
	</script>
	
</body>
</html>
