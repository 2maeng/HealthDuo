<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <title>홈페이지</title>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style type="text/css">
body {
   background-color: black;
}

#wrapper {
   width: 100%;
   height: 100%;
   position: absolute;
   top: 50%;
   left: 50%;
   text-align: center;
   transform: translate(-50%, -50%);
}

.menu-link {
   width: cover;
   padding: 20px 80px;
   color: #03e9f4;
   text-decoration: none;
   text-transform: uppercase;
   transition: 0.5s;
   letter-spacing: 4px;
   border: 2px solid #03e9f4;
   outline: 0;
   border-radius: 5px;
   font-weight: bold;
}

.menu-link:hover {
   background: #03e9f4;
   color: #fff;
   box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 100px #03e9f4;
}

.log-link {
   padding: 20px 80px;
   color: #FF5675;
   text-decoration: none;
   text-transform: uppercase;
   transition: 0.5s;
   letter-spacing: 4px;
   border: 2px solid #FF5675;
   outline: 0;
   border-radius: 5px;
   font-weight: bold;
}

.log-link:hover {
   background: #FF5675;
   color: #fff;
   box-shadow: 0 0 5px #FF5675, 0 0 25px #FF5675, 0 0 100px #FF5675;
}


@font-face {
   font-family: neon;
   src: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/707108/neon.ttf);
}

.neonBox {
   margin: 0;
   padding: 0;
   width: 100%;
   height: 400PX;;
   display: table;
   text-align: center;
   vertical-align: center;
   top: 150px;
}

@font-face {
  font-family: neon;
  src: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/707108/neon.ttf);
}

.container {
  display: table-cell;
  text-align: center;
  vertical-align: middle;
}

.neon {
  cursor: pointer;
  font-family: neon;
  color: #FB4264;
  font-size: 6vw;
  line-height: 6vw;
  text-shadow: 0 0 3vw #F40A35;
  margin-top: 60px;
}

.neon-user{
  cursor: pointer;
  font-family: neon;
  color: #fff;
  font-size: 2vw;
  margin-top: 60px;
  text-shadow: 0 0 3vw #F40A35;
}

.neon-user {
  animation: neon 1s ease infinite;
  -moz-animation: neon 1s ease infinite;
  -webkit-animation: neon 1s ease infinite;
}

@keyframes neon-user {
  0%,
  100% {
    text-shadow: 0 0 1vw #FA1C16, 0 0 3vw #FA1C16, 0 0 10vw #FA1C16, 0 0 10vw #FA1C16, 0 0 .4vw #FED128, .5vw .5vw .1vw #806914;
    color: #FED128;
  }
  50% {
    text-shadow: 0 0 .5vw #800E0B, 0 0 1.5vw #800E0B, 0 0 5vw #800E0B, 0 0 5vw #800E0B, 0 0 .2vw #800E0B, .5vw .5vw .1vw #40340A;
    color: #806914;
  }
}


.flux {
  cursor: pointer;
  font-family: neon;
  color: #426DFB;
  font-size: 5vw;
  line-height: 5vw;
  text-shadow: 0 0 3vw #2356FF;
}
.user {
  cursor: pointer;
  font-family: neon;
  color: #426DFB;
  font-size: 5vw;
  line-height: 5vw;
  text-shadow: 0 0 3vw #2356FF;
}

.neon {
  animation: neon 1s ease infinite;
  -moz-animation: neon 1s ease infinite;
  -webkit-animation: neon 1s ease infinite;
}

@keyframes neon {
  0%,
  100% {
    text-shadow: 0 0 1vw #FA1C16, 0 0 3vw #FA1C16, 0 0 10vw #FA1C16, 0 0 10vw #FA1C16, 0 0 .4vw #FED128, .5vw .5vw .1vw #806914;
    color: #FED128;
  }
  50% {
    text-shadow: 0 0 .5vw #800E0B, 0 0 1.5vw #800E0B, 0 0 5vw #800E0B, 0 0 5vw #800E0B, 0 0 .2vw #800E0B, .5vw .5vw .1vw #40340A;
    color: #806914;
  }
}

.flux {
  animation: flux 2s linear infinite;
  -moz-animation: flux 2s linear infinite;
  -webkit-animation: flux 2s linear infinite;
  -o-animation: flux 2s linear infinite;
}

@keyframes flux {
  0%,
  100% {
    text-shadow: 0 0 1vw #1041FF, 0 0 3vw #1041FF, 0 0 10vw #1041FF, 0 0 10vw #1041FF, 0 0 .4vw #8BFDFE, .5vw .5vw .1vw #147280;
    color: #28D7FE;
  }
  50% {
    text-shadow: 0 0 .5vw #082180, 0 0 1.5vw #082180, 0 0 5vw #082180, 0 0 5vw #082180, 0 0 .2vw #082180, .5vw .5vw .1vw #0A3940;
    color: #146C80;
  }
}

.box1 {
   width: 100%;
   height: 200px;
   display: flex;
   top: 30px;
   justify-content: center;
   align-items: center;
   
}

.box1 a {
   margin: 10px;
}

.box2 {
   height: 200px;
   display: flex;
   justify-content: center;
   align-items: center;
}

.box2 a {
   margin: 10px;
}

.menu-item a {
  display: inline-block;
  overflow: hidden;
  transition: transform 0.3s;
}

.menu-item a:hover {
  transform: scale(1.2);
}

.log-item a {
  display: inline-block;
  overflow: hidden;
  transition: transform 0.3s;
}

.log-item a:hover {
  transform: scale(1.2);
}



ul {
   list-style: none;
   margin-top: 30px;
;}

li {
   float: left;	
   margin-right: 20px;
}

#pop {
	width: 100%;
	height : 100%;
   background-color: rgba(0, 0, 0, 0.850);
   	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 999;
	display: block;
}

#pop-in {
	width: 650px;
	height: 480px;
	background: #3d3d3d;
	color: #ffffff;
	text-align: center;
	align-items: center;
	border: 2px solid #000;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

</style>

</head>
<body>

    	  <!-- 레이어 팝업 창 -->
    	<ul class="log-nav">
    	  <div id="pop">
    	  	<div id="pop-in">
				<button id="close" style="width: 100%; margin: auto;">close</button>
				<br>
				<!-- 이미지 슬릭슬라이더 -->
				<NPNC:slickslider />
				<br>
				<button id="today-close">오늘하루 보지않기</button>
    	 	</div>
		  </div>
		</ul>

   <div id="wrapper">
      <div class="box1">
         <ul class="menu-nav">
            <li class="menu-item"><a class="menu-link"
               href="main.do">홈</a></li>
            <li class="menu-item"><a class="menu-link" href="about.do">소개</a>
            </li>
            <li class="menu-item"><a class="menu-link" href="preparingPage.do">매칭</a>
            </li>
            <li class="menu-item"><a class="menu-link "href="boardListPage.do">커뮤니티</a>
            </li>
            <li class="menu-item"><a class="menu-link " href="noticeListPage.do">공지사항</a>
            </li>
           <c:if test="${ not empty mid}">
					<li class="menu-item"><a class="menu-link " href="mypage.do">마이페이지</a>
					</li>
           		</c:if>
         </ul>
      </div>
         
      <div class="neonBox" id="PopupOpenButton">
         <div class="neon">헬스해듀오</div>
         <div class="flux">made by @NPNC</div>
         <c:if test="${ not empty mid }">
            <div class="neon-user" style="color:#FF1493;">${nickName}님 환영합니다</div>
         </c:if>
      </div>

      <div class="box2">
         <ul class="log-nav">
            <c:if test="${ not empty mid}">
               <li class="log-item"><a class="log-link" href="logout.do">로그아웃</a></li>
           </c:if>
           <c:if test="${ empty mid }">
               <li class="log-item"><a class="log-link" href="loginPage.do">로그인</a></li>
               <li class="log-item"><a class="log-link" href="signupPage.do">회원가입</a></li>
           </c:if>
         </ul>
	      
      </div>
   </div>

	<script>

	$(document).ready(function () {
	  cookiedata = document.cookie;
	  console.log("로딩쿠키");
        if(cookiedata.indexOf("close=Y")<0){ // 해당 쿠키가 없다면 -1 리턴
        $('#pop').show();
	  console.log("쿠키없음");
	  }
	  else {
		$('#pop').hide();
	  console.log("쿠키있음");
	  }
	});

	$("#PopupOpenButton").click(function() {
		$('#pop').show();
	  console.log("팝업창 열기");
	  });
	
	$("#close").click(function() {
		$('#pop').hide();
	  console.log("팝업창 닫기");
	  });
	
	$("#today-close").click(function() {
		$('#pop').hide();
        setCookie("close","Y",1); 
	  console.log("하루보지않기");
	});
	
	function setCookie(cname, cvalue, exdays) { 
    	var d = new Date(); 
        d.setTime(d.getTime() + (exdays*24*60*60*1000)); //시간설정 
        var expires = "expires="+d.toUTCString(); var temp = cname + "=" + cvalue + "; " + expires; 
        document.cookie = temp; 
    } 
    
	</script>

	<NPNC:basic_body_footer />
	
</body>
</html>