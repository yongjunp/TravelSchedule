<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://kit.fontawesome.com/c8056a816e.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Jua:400" rel="stylesheet">
<style>
.navbar {
	position: fixed;
	width: 100%;
	z-index: 2;
	top: 0px;
}
.profile {
	width: 38px;
	border-radius: 50px;
	height: 38px;
}
.info:hover{
	cursor:pointer;
}
.bk{
	color: black;
}

.bg-wh{
	background-color: white;
	box-shadow: 0px 0px 10px #A2A2A2;
}
div, h1, h2, h3, h4, h5, h6{
	font-family: 'Jua';
}

</style>
<nav class="navbar navbar-expand-lg bg-body-tertiary bg-wh font-jua">
	<div class="container px-5">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/"><i class="fa-solid fa-shoe-prints"></i> FootPrint</a>
		<div class="col" style="display: flex; align-items: center;"></div>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			<c:choose>
					<c:when test="${sessionScope.loginId ==null }">
						<li class="nav-item "><a class="nav-link bk"
							href="/memberLoginForm">여행달력</a></li>
					</c:when>	
					<c:otherwise>
						<li class="nav-item"><a class="nav-link bk"
							href="/selectCalendar">여행달력</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link bk"
					href="/TdestSearchPage">여행지검색</a></li>
				<li class="nav-item"><a class="nav-link bk"
					href="/ReviewList">여행지리뷰</a></li>
				<c:choose>
					<c:when test="${sessionScope.loginId ==null }">
						<li class="nav-item"><a class="nav-link bk"
							href="${pageContext.request.contextPath }/memberLoginForm">로그인</a></li>
						<li class="nav-item"><a class="nav-link bk"
							href="${pageContext.request.contextPath }/memberJoinForm">회원가입</a></li>
					</c:when>
					<c:otherwise>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle " id="navbarDropdownPortfolio"
					href="#" role="button" data-bs-toggle="dropdown"
					aria-expanded="false" style="padding:0px; padding-left:7.5px;">
					<c:if test="${sessionScope.loginState == 'NY'}">
					<img style="width:38px;"src="/resources/memberProfile/${sessionScope.loginProfile}"
								class="profile">
					</c:if>
					<c:if test="${sessionScope.loginState == 'YK'}">
					<img style="width:38px;"src="${sessionScope.loginProfile}"
								class="profile">
					</c:if>
					<c:if test="${sessionScope.loginState == 'NA'}">
					<img style="width:38px;"src="${sessionScope.loginProfile}"
								class="profile">
					</c:if>
					</a>
					<div class="dropdown-menu dropdown-menu-end w3-card-4 p-3"
						style="width: 300px; border: none;"
						aria-labelledby="navbarDropdownPortfolio">
						<h1 style="text-align: justify;">
							<c:if test="${sessionScope.loginState == 'AD'}">
							<img src="/resources/memberProfile/${sessionScope.loginProfile}"
								class="profile">${sessionScope.loginNickname }<h5>(${sessionScope.loginId })</h5>
							</c:if>
							<c:if test="${sessionScope.loginState == 'NY'}">
							<img src="/resources/memberProfile/${sessionScope.loginProfile}"
								class="profile">${sessionScope.loginNickname }
							</c:if>
							<c:if test="${sessionScope.loginState == 'YK'}">
								<img src="${sessionScope.loginProfile}"
								class="profile">${sessionScope.loginNickname }
							</c:if>
							<c:if test="${sessionScope.loginState == 'NA'}">
								<img style="width:38px;"src="${sessionScope.loginProfile}"
								class="profile">${sessionScope.loginNickname }
							</c:if>
						</h1>
						<c:if test="${sessionScope.loginState == 'AD' }">
							<hr style="border-top:2px solid lightgray">
							<p class="info" onclick='location.href="${pageContext.request.contextPath }/adminMain"'>관리자페이지</p>
						</c:if>
							<hr style="border-top:2px solid lightgray">
							<p class="info" onclick='location.href="${pageContext.request.contextPath }/myInfo"'>마이페이지</p>
													
							<hr style="border-top:2px solid lightgray">
							<p class="info"onclick="location.href='${pageContext.request.contextPath }/memberLogout'">로그아웃</p>
					</div>
				</li>
					</c:otherwise>
				</c:choose>
				
			</ul>
		</div>
	</div>
</nav>