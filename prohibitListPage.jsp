<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>신고글 목록</title>

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
							<i class="fas fa-table me-1"></i> 신고글 목록
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>신고수</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>신고수</th>
									</tr>
								</tfoot>
								<c:set var="a" value="${fn:length(phdatas)+1}" ></c:set>
								<tbody>
									<c:forEach var = 'phdata' items="${phdatas}">
									<c:set var="a" value="${a-1}"> </c:set>
										<tr>
											<th>${a}</th>
											<th><a href="boardPage.do?boardNum=${phdata.boardNum}">${phdata.title}</a></th>
											<c:if test="${phdata.nickName == null}"><th>탈퇴한 사용자</th></c:if>
											<c:if test='${phdata.nickName != null}'><th>${phdata.nickName}</th></c:if>
											<th>${phdata.prohibitCnt}</th>
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