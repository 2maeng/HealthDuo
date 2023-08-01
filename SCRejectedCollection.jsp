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
   커뮤니티 글 목록
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
                            <td>${bdata.recommendCnt}</td>
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
   		<table>
    <tr>
      <td height="40" colspan="8" align="center"></td>
    </tr>
    <tr>
      <form action="" method="get" name="search" id="search" target="_top">
        <td height="20" colspan="8" valign="top">
          <div align="center">
            <input type="hidden" name="kind" value="search">
            <input type="hidden" name="table" value="total">
            <input type="hidden" name="search_table_name" value="total">
            <select name="keyfield">
              <option value="num" selected>번호</option>
              <option value="subject" selected>제목</option>
              <option value="name">작성자</option>
            </select>
            <input type="text" name="keyword">
            <input type="submit" name="submit" value="검색" onclick="return search_check()">
          </div>
        </td>
      </form>
    </tr>
    <tr>
      <td height="15"></td>
    </tr>
    <!-- Add more table rows and cells here if needed -->
  </table>
   
   <NPNC:basic_body_footer />

   <NPNC:basic_body_javascript />

</body>

</html>