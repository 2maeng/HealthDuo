<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>로그인</title>

<style type="text/css">
.signup_bt {
   width: auto;
   text-align: right;
}
</style>

<NPNC:basic_head />

<!-- Google API를 사용하기 위한 스크립트 -->
<script src="https://accounts.google.com/gsi/client" sync defer>//Google api</script>

</head>

<body>

	<NPNC:basic_body_header />

	<div class="contact_section">
		<div class="container">
			<br>
			<h1 class="contact_taital">로그인</h1>
			<div class="email_text">
			<div class="signup_bt">
				<strong><a class="signup_bt" href="signupPage.do">회원가입</a></strong>
			</div>
				<form class="form-group" action="login.do" method="post">
					<input class="email-bt" type="text" name="mid" placeholder="아이디 입력"	required> <br>
					<input class="email-bt"	type="password" name="mpw" placeholder="비밀번호 입력" required>	<br>
					<input class="send_btn_total" type="submit" value="로그인" > <br>
				</form>
			</div>
			<!-- SNS 로그인 -->
			<main>
				<div class="snslogin">
				
					<!-- 구글 로그인 버튼 -->
					<NPNC:google_login />
					<br>
					
				</div>
			</main>
		</div>
	</div>
	
	<NPNC:basic_body_footer />

	<NPNC:basic_body_javascript />

</body>

</html>