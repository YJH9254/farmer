<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ϱ�</title>
</head>
<body>

	<h3>�����Ϸ��� ���� ��й�ȣ�� �Է��ϴ� ��</h3>
	
	<h5 id="out"></h5>
	<h5 id="out2"></h5>
	
	<input id="inputPassword" type="password" name="board_password" /> 
	<button id="confirmBtn">Ȯ��</button>
	
	<script src="<%=request.getContextPath()%>/resources/board/js/sha256.js"></script>
	<script>
		const out = document.getElementById('out');
		const out2 = document.getElementById('out2');
		const inputPassword = document.getElementById('inputPassword');
		const hiddenPassword = opener.document.getElementById('hiddenPassword');
		const delForm = opener.document.getElementById('delForm');
		const confirmBtn = document.getElementById('confirmBtn');
		
		out.innerText = '�����Ϸ��� ���� ��ȣ: ' + delForm.elements.board_id.value;
		out2.innerText += '�����Ϸ��� ���� ��� �ؽ���: ' + delForm.elements.check_password.value;
		
		const getHashedPassword = password => sha256(password).toUpperCase();
		
		confirmBtn.addEventListener('click', (e) => {
			const hashedPassword = getHashedPassword(inputPassword.value);
			
			if (hashedPassword === delForm.elements.check_password.value) {
				hiddenPassword.value = hashedPassword;
				delForm.submit();
				window.close();
			} else {
				alert('��й�ȣ�� Ʋ�Ƚ��ϴ�!');
			}
		});	
	</script>
</body>
</html>