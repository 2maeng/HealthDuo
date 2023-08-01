<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>공지사항</title>
<style type="text/css">
  html, body {
  	width: 100%;
  	height: 100%;
  
  }
  #container {
  	backgorund-color: black;
  	height: 1200px;
  	padding: 0px 100px 0px 100px;
  
  }
  .textName {
   display: inline-block;
   width: 1100px;
  
  }
  .textH {
   font-weight: bold;   
   display: inline-block;
   width: 250px;
   padding: 10px;
  }
  
  .readmore_bt2 {
   width: 170px;
   float: right;
   margin-top: 0;
}

.readmore_bt2 a {
   width: 100%;
   float: right;
   font-size: 16px;
   color: #ffffff;
   background-color: #000d10;
   text-align: center;
   padding: 10px 0px;
   border-radius: 30px;
   font-weight: bold;
   text-transform: uppercase;
}

.readmore_bt2 a:hover {
   color: #ffffff;
   background-color: #2b2278;
}

   /* 탭 스타일 */
  .tab-container {
    display: flex;
  }

  .tab {
    list-style: none;
    padding: 0;
    margin: 0;
    display: inline-block;
  }

  .tab li {
    padding: 10px 20px;
    cursor: pointer;
    color: #333;
    background-color: #f1f1f1;
    margin-right: 0px; 
  }

  .tab li:hover {
    background-color: #333;
    color: #fff;
  }

  .tab li.on {
    background-color: #333;
    color: #fff;
  }

  /* 탭 내용 스타일 */
  .tabcont {
    display: none;
  }

  .tabcont.on {
    display: block;
  }

  /* "더보기" 버튼 스타일 */
  .readmore_bt a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #f1f1f1;
    color: #333;
    text-decoration: none;
    margin-top: 10px;
  }

  .readmore_bt a:hover {
    background-color: #333;
    color: #fff;
  }

  /* 페이지네이션 스타일 */
  ul.pagination {
    list-style: none;
    display: flex;
    justify-content: center;
    align-items: center;
    left: center;
    bottom: 150px;
  } 
 
  ul.pagination li {
    margin: 5px;
    padding: 8px 12px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  ul.pagination li.active {
    background-color: #007bff;
    color: #fff;
  }

  ul.pagination li a {
    text-decoration: none;
    color: #007bff;
  }
  
  #menu3 {
  	border-radius: 5px;
  	background-color: lightgray;
  
  }
  
</style>
<NPNC:basic_head />
</head>

<body>

<NPNC:basic_body_header />

   <NPNC:basic_body_tab />
   <td><a href='<c:url value='/js/comu3?idx=${bList.IDX }'/>' class="text-dark">${bList.TITLE }</a></td> 
   
	<div id="container">
		<div class="textName" >
  	<h1 class="textH">공지사항 글 목록</h1>
   	<div class="readmore_bt2">
  </div>
  </div>
  <hr size="20px;">
  <ul class="tab">
    <li class="on" data-tab="menu3">공지</li>
  </ul>
  <!-- 작성 버튼 내용 추가 -->
	<c:if test="${mid=='ADMIN'}">
		<div class="readmore_bt2"><a href="insertNoticePage.do">작성</a></div>
	</c:if>

	<c:set var="postsPerPage" value="10" />
	<c:set var="totalPostsnt" value="${fn:length(bdatasnt)}" />
	<c:set var="totalPagesnt" value="${(totalPostsnt + postsPerPage - 1)/postsPerPage}" />

  <div id="menu3" class="tabcont on">
    <table class="table table-striped">
        <thead>
            <tr>
                <th class="thNum" style="width: 50px;">번호</th>
            	<th class="thTitle" style="width: 550px;">제목</th>
           	 	<th class="thNickname" style="width: 150px;">작성자</th>
            	<th class="thDate" style="width: 150px;">작성일</th>
            	<th class="thRecommentCnt" style="width: 100px;">공감수</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${empty bdatasnt}">
                    <tr>
                        <td width="100%" colspan="5">작성된 글이 없습니다.</td>
                    </tr>
                </c:when>
                <c:otherwise>
                <c:set var="startNum" value="${totalPostsnt - (currentPagent - 1) * postsPerPage}" />
                    <c:forEach var="currentPageNotice" items="${currentPageNotices}">
                        <tr>
                            <td>${startNum}</td>
                            <td><a href="boardPage.do?boardNum=${currentPageNotice.boardNum}">${currentPageNotice.title}</a></td>
                            <td>${currentPageNotice.nickName}</td>
                            <td>${currentPageNotice.date}</td>
                            <td>${currentPageNotice.recommendCnt}</td>
                        </tr>
                        <c:set var="startNum" value="${startNum - 1}" />
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
    <ul class="pagination">
					<!-- 페이지네이션 내용 추가 -->
					<c:forEach var="page" begin="1" end="${totalPagesnt}">
						<c:if test="${page eq currentPagent}">
							<li class="active">${page}</li>
						</c:if>
						<c:if test="${page ne currentPagent}">
							<li><a href="javascript:void(0)" onclick="changePage(${page}, 'menu3')">${page}</a></li>
						</c:if>
					</c:forEach>
				</ul>
  </div>
      </div>
   <NPNC:basic_body_javascript />
</body>
<script type="text/javascript">
    // JavaScript 함수: 페이지 이동 시 탭 상태를 유지하고 해당 탭의 페이지로 이동하는 함수
    function changePage(page, tab) {
        // 탭 상태 변경
        document.querySelectorAll(".tabcont").forEach(element => {
            element.classList.remove("on");
        });
        document.getElementById(tab).classList.add("on");
        

        // 페이지 이동
        // 예제에서는 페이지를 새로고침하는 방식으로 처리하였지만, 실제로는 AJAX를 사용하여 비동기적으로 페이지를 변경하는 것이 좋습니다.
        window.location.href = "noticeListPage.do?tab="+tab+"&page=" + page;
    }
</script>
<footer>
   <NPNC:basic_body_footer />
</footer>
</html>