<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
	<title>Home</title>
		<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
 	<style>
 	#home_controller { position:absolute; width:100px; height:100px; top:50%; left:50%; margin-top:-50px; margin-left:-50px; }
 	
 	</style>
</head>


<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		$("#registerBtn").on("click", function(){
			location.href="member/register";
		})
		
	
		$("#memberUpdateBtn").on("click", function(){
			location.href="member/memberUpdateView";
		})
		$("#memberTest").on("click", function(){
			location.href="board/memberTest";
		})
		$("#userPageBtn").on("click", function(){
			location.href="board/list";
		})
		$("#adminPageBtn").on("click", function(){
			location.href="board/list2_accdetail";
		})

		$("#adminPageBtn2").on("click", function(){
			location.href="admin/adminPage";
		})
		
		
	})
</script>

<body>
	<form name='homeForm' method="post" action="/member/login">
		<div style="text-align: center; margin: 100 auto;">
			<img src="${pageContext.request.contextPath}/resources/logo.png">
			<c:if test="${member == null}">
				<div class="container">
					<div class="col-lg-4"></div>
					<div class="col-lg-4">
						<div class="jumbotron" style="padding-top:20px;">
							<h2 style="text-align: center;">Sign in</h2>
							<div class="form-group">
								<label for="user_id"></label>
								<input type="text" id="user_id" placeholder="아이디" name="user_id" class="form-control">
							</div>
							<div class="form-group">
								<label for="user_pw"></label>
								<input type="password" id="user_pw" placeholder="비밀번호" name="user_pw" class="form-control">
							</div>
							
							<div>
								<button type="submit" class="btn btn-primary form-control">로그인</button>
								<button id="registerBtn" class="btn btn-primary form-control" type="button">회원가입</button>
							</div>
						</div>
					</div>
				
				</div>
			</c:if>
			<c:if test="${member != null }">
				<div>
					<p>${member.user_id}님 환영 합니다.</p>
					<button id="memberUpdateBtn" type="button">회원정보수정</button>
					<button id="logoutBtn" type="button">로그아웃</button>
					<br>
					<br>
					<button id="memberTest" type="button" class="btn btn-primary btn-lg" width="100px">테스트 페이지 1</button>
					<button id="userPageBtn" type="button" class="btn btn-primary btn-lg" width="100px">테스트 페이지 2</button>
					<button id="adminPageBtn" type="button" class="btn btn-primary btn-lg">사용자 관리 페이지</button>
					<button id="adminPageBtn2" type="button" class="btn btn-default btn-lg">DB관리 페이지</button>
					
				
					
				</div>
			</c:if>
			<c:if test="${msg == false}">
				<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
			</c:if>
		</div>
	</form>
	
	
</body>

</html>



