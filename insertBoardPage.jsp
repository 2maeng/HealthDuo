<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>글 작성 페이지</title>
<NPNC:basic_head />
</head>

<body>

	<NPNC:basic_body_header />

	<div class="contact_section layout_padding">
		<div class="container">
			<h1 class="contact_taital">글 작성 페이지</h1>
			<div class="email_text">
				<form class="form-group" action="insertBoard.do" method="post" style="font-size:20px">
					<input class="radio" type="radio" name="category" value="1" checked> 잡담 &nbsp; &nbsp;
					<input class="radio" type="radio" name="category" value="2"> 정보 <br>
					<input class="email-bt" type="text" name="title" placeholder="제목 입력" required> <br>
					<textarea class="massage-bt" rows="5" id="comment" name="content" placeholder="내용 입력" required></textarea> <br>
					<input class="send_btn_total" type="submit" value="작성완료"> <br>
				</form>
			</div>
		</div>
	</div>
	
	<NPNC:basic_body_footer />

	<NPNC:basic_body_javascript />

</body>

</html>