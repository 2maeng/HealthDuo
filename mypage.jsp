<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>test_modal</title>

<NPNC:basic_head />

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* 모달 스타일 */
label {
	text-align: center;
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
	text-align: right;
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

</style>
</head>

<body>

	<NPNC:basic_body_header />

	<!-- 비밀번호 변경 모달 -->
	<div id="updateMpwModal" class="modal">
		<div class="modal-content">
			<span class="close">&times;</span>
			<label for="password">비밀번호 확인</label>
			<input type="password" id="passwordMpw" placeholder="비밀번호를 입력하세요">
			<button id="submitBtnMpw">확인</button>
		</div>
	</div>

	<!-- 회원탈퇴 모달 -->
	<div id="deleteMemberModal" class="modal">
		<div class="modal-content">
			<span class="close">&times;</span>
			<label for="password">비밀번호 확인</label>
			<input type="password" id="passwordMember" placeholder="비밀번호를 입력하세요">
			<button id="submitBtnMember">확인</button>
		</div>
	</div>

	<div class="contact_section layout_padding">
		<div class="container">
			<h1 class="contact_taital">마이페이지</h1>
			<div class="email_text">
				<!-- 1. 본인 정보 -->
				<div class="form-group">아이디: ${mdata.mid}</div>
				<div class="form-group">이름: ${mdata.name}</div>
				<div class="form-group">닉네임: ${mdata.nickName}</div>
				<div class="form-group">이메일: ${mdata.email}</div>

				<!-- 버튼 모음 -->
				<div class="form-group">

					<!-- 2. 비밀번호 변경 버튼 -->
					<input class="menu_bt" type="submit" id="openModalBtnMpw" value="비밀번호 변경"> <br> <br>

					<!-- 3. 내가 쓴 글 목록 -> 별도페이지 -->
					<form action="ownBoardListPage.do">
						<input class="menu_bt" type="submit" value="작성글 목록">
					</form>
					<br>

					<!-- 4. 회원탈퇴 -->
					<input class="menu_bt" type="submit" id="openModalBtnMember" value="회원탈퇴"> <br> <br>

					<!-- 5. 신고글 목록(관리자라면) -> 별도 페이지 -->
					<c:if test="${mid eq 'ADMIN'}">
						<form action="prohibitListPage.do">
							<input class="menu_bt" type="submit" value="신고글 목록">
						</form>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<script>
	const openModalBtnMpw = document.getElementById("openModalBtnMpw");
	const openModalBtnMember = document.getElementById("openModalBtnMember");
	
    const passwordModalMpw = document.getElementById("updateMpwModal");
    const passwordModalMember = document.getElementById("deleteMemberModal");
    
    const closeBtnMpw = passwordModalMpw.querySelector(".close");
    const closeBtnMember = passwordModalMember.querySelector(".close");
    
    const submitBtnMpw = document.getElementById("submitBtnMpw");
    const submitBtnMember = document.getElementById("submitBtnMember");
    
    const passwordInputMpw = document.getElementById("passwordMpw");
    const passwordInputMember = document.getElementById("passwordMember");

    //
    openModalBtnMpw.addEventListener("click", () => {
    	passwordModalMpw.style.display = "block";
    });
    openModalBtnMember.addEventListener("click", () => {
    	passwordModalMember.style.display = "block";
    });

    //
    closeBtnMpw.addEventListener("click", () => {
    	passwordModalMpw.style.display = "none";
    });
    closeBtnMember.addEventListener("click", () => {
   		passwordModalMember.style.display = "none";
    });

    //
    submitBtnMpw.addEventListener("click", () => {
      const enteredPassword = passwordInputMpw.value;
      
      if (enteredPassword === '${mdata.mpw}') { // ${mdata.mpw}
				// 비밀번호가 일치하면 페이지 이동
			passwordModalMpw.style.display = "none";
			location.href = "updateMpwPage.do";
		} else {
			alert("비밀번호가 일치하지 않습니다");
			passwordModalMpw.style.display = "none";
		}
      
    });
    submitBtnMember.addEventListener("click", () => {
      const enteredPassword = passwordInputMember.value;
      
      if (enteredPassword === '${mdata.mpw}') { // ${mdata.mpw}
				// 비밀번호가 일치하면 페이지 이동
			passwordModalMember.style.display = "none";
			location.href = "deleteMemberPage.do";
		} else {
			alert("비밀번호가 일치하지 않습니다");
			passwordModalMember.style.display = "none";
		}
      
    });
    
	</script>
	
	<NPNC:basic_body_footer />

	<NPNC:basic_body_javascript />

</body>

</html>
