<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="container">
	<div class="gabcont">
		<table class="table table-striped">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>추천수</th>
			</tr>
			<c:forEach var="b" items="${bdatas}">
				<tr>
					<td>${b.boardNum}</td>
					<td><a href="noticePage.do?num=${b.boardNum}">${b.title}</a></td>
					
					<c:forEach var="m" items="${mdatas}">
						<c:if test="${m.mid}.equals(${b.mid})">
							<td>${m.nickName}</td>
						</c:if>
					</c:forEach>
					
					<td>${b.date}</td>
					<td>${b.recommendCnt}</td>
				</tr>
			</c:forEach>
		</table>
 	</div>
</div>