<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<NPNC:basic_head />
</head>

<body>

	<NPNC:basic_body_header />

	<div class="contact_section layout_padding">
		<div class="container">
			<h1 class="contact_taital">공지사항 작성 페이지</h1>
			<div class="email_text">
				<form class="form-group" action="insertNotice.do" method="post">
					<input class="email-bt" type="text" name="title" placeholder="제목 입력" required> <br>
					<textarea class="massage-bt" rows="5" id="comment" name="content" placeholder="내용 입력" required></textarea> <br>
					<input class="email-bt" type="hidden" name="category" value="0">
					<input class="send_btn_total" type="submit" value="작성완료"> <br>
				</form>
			</div>
		</div>
	</div>

	<NPNC:basic_body_footer />

	<NPNC:basic_body_javascript />

</body>

</html>