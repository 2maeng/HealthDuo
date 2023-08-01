<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>내 글 목록</title>

<NPNC:table_head />

</head>

<body>

	<NPNC:basic_body_header />

	<div id="layoutSidenav">
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<div class="card mb-4">
						<div class="card-header">
							<i class="fa-duotone fa-bullhorn"></i> 작성한글목록
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>날짜</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="bdata" items="${bdatas}">
										<tr>
											<th>${bdata.boardNum}</th>
											<th><a href="boardPage.do?boardNum=${bdata.boardNum}">${bdata.title}</a></th>
											<c:if test="${bdata.nickName == null}"><th>탈퇴한 사용자</th></c:if>
											<c:if test='${bdata.nickName != null}'><th>${bdata.nickName}</th></c:if>
											<th>${bdata.date}</th>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>

	<NPNC:basic_body_footer />

</body>

<NPNC:table_script />

</html>