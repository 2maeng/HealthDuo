<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style type="text/css">
	.container-fluid {
		background-color: black;
	}
</style>

<!-- header section start -->
<div class="header_section">
	<div class="header_main">
		<div class="mobile_menu">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="logo_mobile">
					<a class="mainlogo" href="main.do"><img src="images/logo.png"></a>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="main.do">홈</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="about.do">소개</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="preparingPage.do">매칭</a>
						</li>
						<li class="nav-item"><a class="nav-link " href="boardListPage.do">커뮤니티</a>
						</li>
						<li class="nav-item"><a class="nav-link " href="noticeListPage.do">공지사항</a></li>
						<c:if test="${ not empty mid}">
							<li class="nav-item"><a class="nav-link " href="mypage.do">마이페이지</a>
							</li>
           				</c:if>
					</ul>
				</div>
			</nav>
		</div>
		<div class="container-fluid">
			<div class="logo">
				<a class="mainlogo" href="main.do"><img src="images/logo.png"></a>
			</div>
			<div class="menu_main">
				<ul>
					<li class="active"><a href="main.do">홈</a></li>
					<li><a href="about.do">소개</a></li>
					<li><a href="preparingPage.do">매칭</a></li>
					<li><a href="boardListPage.do">커뮤니티</a></li>
					<li><a href="noticeListPage.do">공지사항</a></li>
					<c:if test="${ not empty mid}">
					<li><a href="mypage.do">마이페이지</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- header section end -->