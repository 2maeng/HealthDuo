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
  .tab-container {
    display: flex;
  }

  .tab {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
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

  .tabcont {
    display: none;
  }

  .tabcont.on {
    display: block;
  }

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
  
      ul.pagination {
        list-style: none;
        display: flex;
        justify-content: center;
        align-items: center;
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
</style>



<NPNC:basic_head />
</head>

<body>

<NPNC:basic_body_header />

   <NPNC:basic_body_tab />
   <div class="container">
   <div class="container2">
   </div>
   <td><a href='<c:url value='/js/comu3?idx=${bList.IDX }'/>' class="text-dark">${bList.TITLE }</a></td> 
   
   <div id="container">
   <h1><strong>커뮤니티 글 목록</strong></h1>
   <hr size="20px;">
      <ul class="tab">
         <li class="on" data-tab="menu0">전체</li>
         <li data-tab="menu1">정보</li>
         <li data-tab="menu2">잡담</li>
      </ul>

      <div id="menu0" class="tabcont on">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>공감수</th>
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
                <c:set var="a" value="${fn:length(bdatas)+1}" ></c:set>
                    <c:forEach var="bdata" items="${bdatas}">
                             <c:set var="a" value="${a-1}"> </c:set>
                        <tr>
                            <td>${a }</td>
                            <td><a href="boardPage.do?boardNum=${bdata.boardNum}">${bdata.title}</a></td>
                            <td>${bdata.mid}</td>
                            <td>${bdata.date}</td>
                            <td>${bdata.recommendCnt}</td>
                        </tr>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
    <ul class="pagination">
    <c:forEach var="page" begin="1" end="5">
        <c:if test="${page eq currentPage}">
            <li class="active">${page}</li>
        </c:if>
        <c:if test="${page ne currentPage}">
            <li><a href="boardListPage.do?page=${page}">${page}</a></li>
        </c:if>
    </c:forEach>
</ul>
    				<c:if test="${empty mid}">
                      <div class="readmore_bt"><a href="loginPage.do">작성</a></div>
                    </c:if>
                    <c:if test="${not empty mid}">
                      <div class="readmore_bt"><a href="insertBoardPage.do">작성</a></div>
					</c:if>
	
</div>


      <div id="menu1" class="tabcont">
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
            <c:choose>
                <c:when test="${empty bdatas}">
                    <tr>
                        <td width="100%" colspan="5">작성된 글이 없습니다.</td>
                    </tr>
                </c:when>
                <c:otherwise>
                <c:set var="a" value="${fn:length(bdatas)+1}" ></c:set>
                    <c:forEach var="bdata" items="${bdatas}">
                        <c:set var="a" value="${a-1}"> </c:set>
                        <tr>
                        	<c:if test="${bdata.category eq '1' }">
                            <td>${a }</td>
                            <td><a href="boardPage.do?boardNum=${bdata.boardNum}">${bdata.title}</a></td>
                            <td>${bdata.mid}</td>
                            <td>${bdata.date}</td>
                            <td>${fn:length(rcdatas)}</td>
                            </c:if>
                        </tr>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </tbody>
            </table>
                <div class="readmore_bt"><a href="insertBoardPage.do">작성</a></div>
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
            <c:choose>
                <c:when test="${empty bdatas}">
                    <tr>
                        <td width="100%" colspan="5">작성된 글이 없습니다.</td>
                    </tr>
                </c:when>
                <c:otherwise>
                <c:set var="a" value="${fn:length(bdatas)+1}" ></c:set>
                    <c:forEach var="bdata" items="${bdatas}">
                <c:set var="a" value="${a-1}"> </c:set>
                        <tr>
                            <td>${a }</td>
                            <td><a href="boardPage.do?boardNum=${bdata.boardNum}">${bdata.title}</a></td>
                            <td>${bdata.mid}</td>
                            <td>${bdata.date}</td>
                            <td>${fn:length(rcdatas)}</td>
                        </tr>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </tbody>
            </table>
  
            <div class="readmore_bt"><a href="insertBoardPage.do">작성</a></div>
      </div>
      </div>
      </div>
   <NPNC:basic_body_javascript />
</body>
<footer>
   <NPNC:basic_body_footer />
</footer>
</html>