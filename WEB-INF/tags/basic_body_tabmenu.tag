<%@ tag language="java" pageEncoding="UTF-8"%>

<div class="container">
	<div class="container2">
	<h1><strong>커뮤니티 글 목록</strong></h1>
	</div>
	<td><a href='<c:url value='/js/comu3?idx=${bList.IDX }'/>' class="text-dark">${bList.TITLE }</a></td> 
	
	<div id="container">
		<ul class="tab">
			<li class="on" data-tab="menu1">정보</li>
			<li data-tab="menu2">잡담</li>
		</ul>

		<div id="menu1" class="tabcont on">
			 <table class="table table-striped">
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>공감수</th>
                </thead>
                <tbody>
                
                <c:forEach var="info" items="${infos}">
					<tr>
						<td><a href="boardPage.do?num=${info.num}">${info.num}</a></td>
						<td>${info.title}</td>
						<td>${info.writer}</td>
						<td>${info.date}</td>
						<td>${info.favorite}</td>
					</tr>
				</c:forEach>
                   
                </tbody>
            </table>
		</div>

		<div id="menu2" class="tabcont">
			 <table class="table table-striped">
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>공감수</th>
                </thead>
                <tbody>
                   <c:forEach var="comment" items="${comments}">
					<tr>
						<td><a href="boardPage.do?num=${comment.num}">${comment.num}</a></td>
						<td>${comment.title}</td>
						<td>${comment.writer}</td>
						<td>${comment.date}</td>
						<td>${info.favorite}</td>
					</tr>
				</c:forEach>
                </tbody>
            </table>
		</div>
		</div>
      </div>
<script type="text/javascript">
      $(document).ready(function() {
         $("ul.tabs li").click(function() {
            var tab_id = $(this).attr("data-tab");

            $("ul.tabs li").removeClass("on");
            $(".tab-content").removeClass("on");

            $(this).addClass("on");
            $("#" + tab_id).addClass("on");
         });
      });
   </script>