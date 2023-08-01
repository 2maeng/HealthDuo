<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 페이지</title>
</head>
<body>

	<script type="text/javascript">
		var result = confirm("정말로 탈퇴하시겠습니까?");
		if (result) {
			alert("탈퇴되었습니다!");
			location.href = 'deleteMember.do';
		} else {
			alert("마이페이지로 돌아갑니다");
			history.go(-1);
		}
	</script>

</body>
</html>