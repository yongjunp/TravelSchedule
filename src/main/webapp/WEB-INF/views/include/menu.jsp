<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.navbar {
	position: fixed;
	width: 100%;
	z-index: 2;
}
.profile {
	width: 20%;
	border-radius: 50px;
}
</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container px-5">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/">여행페이지</a>
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
						<li class="nav-item"><a class="nav-link"
							href="/memberLoginForm">여행계획</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link"
							href="/selectCalendar">여행계획</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link"
					href="/TdestSearchPage">여행지검색</a></li>
				<li class="nav-item"><a class="nav-link" href="/festival">축제</a></li>
				<c:choose>
					<c:when test="${sessionScope.loginId ==null }">
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath }/memberLoginForm">로그인</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath }/memberJoinForm">회원가입</a></li>
					</c:when>
					<c:otherwise>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle " id="navbarDropdownPortfolio"
					href="#" role="button" data-bs-toggle="dropdown"
					aria-expanded="false" style="padding:0px; padding-left:7.5px;"><img style="width:38px;"src="/resources/memberProfile/${sessionScope.loginProfile}"
								class="profile"></a>
					<div class="dropdown-menu dropdown-menu-end w3-card-4 p-3"
						style="width: 300px; border: none;"
						aria-labelledby="navbarDropdownPortfolio">
						<h1 style="text-align: justify;">
							<img src="/resources/memberProfile/${sessionScope.loginProfile}"
								class="profile">${sessionScope.loginId }</h1>
						<hr style="border-top:2px solid lightgray">
						<p onclick='location.href="${pageContext.request.contextPath }/myInfo"'>내정보</p>
						<p>몇월 몇일 몇개 일정이 있습니다.</p>
						<hr style="border-top:2px solid lightgray">
						날씨
						<hr style="border-top:2px solid lightgray">
						<p style="cursor: pointer;" onclick="location.href='${pageContext.request.contextPath }/TravelReview'">리뷰</p>
						<hr style="border-top:2px solid lightgray">
						<p onclick="location.href='${pageContext.request.contextPath }/memberLogout'">로그아웃</p>
					</div>
				</li>
					</c:otherwise>
				</c:choose>
				
			</ul>
		</div>
	</div>
</nav>

