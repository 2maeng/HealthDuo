<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>커뮤니티 페이지</title>

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

</style>

<NPNC:basic_head />
</head>

<body>

<NPNC:basic_body_header />

   <NPNC:basic_body_tab />
   <td><a href='<c:url value='/js/comu3?idx=${bList.IDX }'/>' class="text-dark">${bList.TITLE }</a></td> 
   
   <div id="container">
  <div class="textName" >
  	<h1 class="textH">커뮤니티 글 목록</h1>
   	<div class="readmore_bt2">
  </div>
  </div>
  <hr size="20px;">
  <ul class="tab">
				<li data-tab="menu0" class="${selectedTab == 'menu0' ? 'on' : ''}">전체</li>
				<li data-tab="menu1" class="${selectedTab == 'menu1' ? 'on' : ''}">잡담</li>
				<li data-tab="menu2" class="${selectedTab == 'menu2' ? 'on' : ''}">정보</li>
			</ul>
<div class="readmore_bt2">
    <!-- 작성 버튼 내용 추가 -->
	<c:if test="${not empty mid}">
		<div class="readmore_bt2"><a href="insertBoardPage.do">작성</a></div>
	</c:if>
</div>



<c:set var="postsPerPage" value="10" />
				<c:set var="totalPosts" value="${fn:length(bdatas)}" />

  <div id="menu0" class="tabcont ${(selectedTab == 'menu0') ? 'on' : ''}">
    <!-- 내용이 전체 탭에 대한 내용 -->
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
                <c:when test="${empty bdatas}">
                    <tr>
                        <td width="100%" colspan="5">작성된 글이 없습니다.</td>
                    </tr>
                </c:when>
                <c:otherwise>
                <c:set var="startNum" value="${totalPosts - (currentPage - 1) * postsPerPage}" />
                    <c:forEach var="currentPageBoard" items="${currentPageBoards}">
                        <tr>
                            <td>${startNum}</td>
                            <td><a href="boardPage.do?boardNum=${currentPageBoard.boardNum}">${currentPageBoard.title}</a></td>
                            <td>${currentPageBoard.nickName}</td>
                            <td>${currentPageBoard.date}</td>
                            <td>${currentPageBoard.recommendCnt}</td>
                        </tr>
                        <c:set var="startNum" value="${startNum - 1}" />
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
    <ul class="pagination">
					<!-- 페이지네이션 내용 추가 -->
				<c:set var="totalPages" value="${(totalPosts + postsPerPage - 1)/postsPerPage}" />
					<c:forEach var="page" begin="1" end="${totalPages}">
						<c:if test="${page eq currentPage}">
							<li class="active">${page}</li>
						</c:if>
						<c:if test="${page ne currentPage}">
							<li><a href="javascript:void(0)" onclick="changePage(${page}, 'menu0')">${page}</a></li>
						</c:if>
					</c:forEach>
				</ul>
  </div>

<c:set var="totalPostsC1" value="${fn:length(bdatasC1)}" />


  <div id="menu1" class="tabcont ${(selectedTab == 'menu1') ? 'on' : ''}">
    <!-- 내용이 잡담 탭에 대한 내용 -->
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
                <c:when test="${empty bdatasC1}">
                    <tr>
                        <td width="100%" colspan="5">작성된 글이 없습니다.</td>
                    </tr>
                </c:when>
                <c:otherwise>
                <c:set var="startNumberC1" value="${totalPostsC1 - (currentPage - 1) * postsPerPage}" />
                    <c:forEach var="currentPageBoardC1" items="${currentPageBoardsC1}">
                        <tr>
                            <td>${startNumberC1}</td>
                            <td><a href="boardPage.do?boardNum=${currentPageBoardC1.boardNum}">${currentPageBoardC1.title}</a></td>
                            <td>${currentPageBoardC1.nickName}</td>
                            <td>${currentPageBoardC1.date}</td>
                            <td>${currentPageBoardC1.recommendCnt}</td>
                        </tr>
                        <c:set var="startNumberC1" value="${startNumberC1 - 1}" />
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
    <ul class="pagination">
    
				<c:set var="totalPagesC1" value="${(totalPostsC1 + postsPerPage - 1)/postsPerPage}" />
					<!-- 페이지네이션 내용 추가 -->
					<c:forEach var="page" begin="1" end="${totalPagesC1}">
						<c:if test="${page eq currentPage}">
							<li class="active">${page}</li>
						</c:if>
						<c:if test="${page ne currentPage}">
							<li><a href="javascript:void(0)"
								onclick="changePage(${page}, 'menu1')">${page}</a></li>
						</c:if>
					</c:forEach>
				</ul>
  </div>
   
   <c:set var="totalPostsC2" value="${fn:length(bdatasC2)}" />

  <div id="menu2" class="tabcont ${(selectedTab == 'menu2') ? 'on' : ''}">
    <!-- 내용이 정보 탭에 대한 내용 -->
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
                <c:when test="${empty bdatasC2}">
                    <tr>
                        <td width="100%" colspan="5">작성된 글이 없습니다.</td>
                    </tr>
                </c:when>
                <c:otherwise>
               <c:set var="startNumberC2" value="${totalPostsC2 - (currentPage - 1) * postsPerPage}" />
                    <c:forEach var="currentPageBoardC2" items="${currentPageBoardsC2}">
                        <tr>
                            <td>${startNumberC2}</td>
                            <td><a href="boardPage.do?boardNum=${currentPageBoardC2.boardNum}">${currentPageBoardC2.title}</a></td>
                            <td>${currentPageBoardC2.nickName}</td>
                            <td>${currentPageBoardC2.date}</td>
                            <td>${currentPageBoardC2.recommendCnt}</td>
                        </tr>
                        <c:set var="startNumberC2" value="${startNumberC2 - 1}" />
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
    <ul class="pagination">
					<!-- 페이지네이션 내용 추가 -->
<c:set var="totalPagesC2" value="${(totalPostsC2 + postsPerPage - 1)/postsPerPage}" />
					<c:forEach var="page" begin="1" end="${totalPagesC2}">
						<c:if test="${page eq currentPage}">
							<li class="active">${page}</li>
						</c:if>
						<c:if test="${page ne currentPage}">
							<li><a href="javascript:void(0)" onclick="changePage(${page}, 'menu2')">${page}</a></li>
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
        window.location.href = "boardListPage.do?tab="+tab+"&page=" + page;
    }
</script>
<footer>
   <NPNC:basic_body_footer />
</footer>
</html>