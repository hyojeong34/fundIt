<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FundIT</title>
</head>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>

<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Shadows+Into+Light" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style-index.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style-project.css" />

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>


<script>
$(function(){
	$(".menu-click").on("click",function(){
		$("#menu-click-div").slideToggle();
	});
	$(".profile-click").on("click",function(){
		$("#profile-click-div").slideToggle();
	});
	
})
</script>

<body>

<div id="nav">
	<div id="nav-menu">
		<img src="${pageContext.request.contextPath }/resources/images/menu.png" class="menu-click" />
		<span class="menu-click">
			프로젝트 관리
		</span>
		&nbsp;&nbsp;&nbsp;
		<span>
			<a href="">
				회원 관리
			</a>
		</span>
	</div>
	
	<div id="menu-click-div">
		<p><a href="">인덱스 프로젝트 관리</a></p>
		<p><a href="">프로젝트 승인관리</a></p>
		<p><a href="">프로젝트 마감관리</a></p>
	</div>
	
	<div id="nav-title">
		<a href="${pageContext.request.contextPath }/admin">Fund It</a>
	</div>
	
	<div id="nav-login">
		
		<!-- 로그인이 안되어있으면-->
		<!-- adminyn = n -->
		<c:if test="${memberLoggedIn eq null }">
			<span>
			<a href="${pageContext.request.contextPath }/login.do">로그인</a>
			/
			<a href="${pageContext.request.contextPath }/member/join.do">회원가입</a>
			</span>
			&nbsp;
			<a href="${pageContext.request.contextPath }/login.do">
				<img src="${pageContext.request.contextPath }/resources/images/profile.png" />
			</a>
		</c:if>
		
		<!-- 로그인이 되어있고,!  -->
		<c:if test="${memberLoggedIn ne null }">
			<!-- 로그인이 관리자이면  -->
			<span class="profile-click">
				관리자 - ${memberLoggedIn.name}
			</span>
			<a href="${pageContext.request.contextPath }/member/memberLogout.do">로그아웃</a>
		</c:if>
	</div>
	
	<%-- <div id="profile-click-div">
		<p><a href="">메시지</a></p>
		<hr />
		<p><a href="">관심 프로젝트</a></p>
		<p><a href="">후원 현황</a></p>
		<p><a href="${pageContext.request.contextPath}/gift/giftDeliveryList.do?email="+${memberLoggedIn.email}>선물 배송리스트</a></p>
		<p><a href="${pageContext.request.contextPath}/project/myProject.do?email=?"+${memberLoggedIn.email}>내가 만든 프로젝트</a></p>
		<hr />
		<p><a href="${pageContext.request.contextPath }/member/memberView.do?email=${memberLoggedIn.email }">계정 설정</a></p>
		<p><a href="${pageContext.request.contextPath }/member/profileView.do?email=${memberLoggedIn.email }">프로필 설정</a></p>
		<hr />
		<p><a href="${pageContext.request.contextPath }/member/memberLogout.do">로그아웃</a></p>
	</div> --%>
</div>


<div id="content-container">