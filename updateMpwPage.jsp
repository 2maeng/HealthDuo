<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경 페이지</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
input[type="password"] {
	display: block;
	margin-bottom: 10px;
	width: 100%;
	padding: 5px;
}

button {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 8px 16px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin-top: 10px;
	cursor: pointer;
	border-radius: 4px;
}

button:hover {
	background-color: #45a049;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.7);
}

.modal-content {
	background-color: #fff;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	max-width: 300px;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
	cursor: pointer;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

label {
	text-align: center;
}
</style>

</head>
<body>


	<script type="text/javascript">
	
window.onload=function() {
	document.getElementById("passwordModal").style.display = "block";
}
	
</script>

	<div id="passwordModal" class="modal">
		<div class="modal-content">
			<label for="password">변경할 비밀번호 입력</label>
			<input type="password" id="password" placeholder="비밀번호를 입력하세요">
			<button id="submitBtn">확인</button>
		</div>
	</div>

	<script>
	const passwordModal = document.getElementById("passwordModal");
    const submitBtn = document.getElementById("submitBtn");
    const passwordInput = document.getElementById("password");

    submitBtn.addEventListener("click", () => {
      const enteredPassword = passwordInput.value;
      // 이 부분에서 비밀번호를 검증하거나 원하는 동작을 수행할 수 있습니다.
      
	if(enteredPassword === "") {
		alert("입력값이 없습니다 이전페이지로 돌아갑니다");
      passwordModal.style.display = "none";
		history.go(-1);
	}
	else {
		alert("비밀번호가 변경되었습니다");
      passwordModal.style.display = "none";
		location.href='updateMpw.do?mpw='+enteredPassword;
	}
      
    });
    
    
  </script>

</body>
</html>