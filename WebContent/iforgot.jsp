<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>명지대학교 수강신청 시스템</title>
	<!-- favicon -->
	<link rel="shortcut icon" href="image/favicon.ico">
	<!-- CSS Files -->
	<link rel="stylesheet" href="style.css" type="text/css">
	<!-- Bootstrap CDN -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Questrial|Sunflower:300" rel="stylesheet">
</head>

<body>
	<!-- NavBar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.do">
			<img src="image/mju_logo.gif" alt="명지대 로고" width="30px" height="30px">
			<small style="font-family: Sunflower;">명지대학교 수강신청 시스템</small>
		</a>
	</nav>

	<!-- Login Form -->
	<div class="container pt-5">
		<div class="col-md-6 center-align">
			<div class="card bg-white">
				<br>
				<% if (request.getParameter("status") == null) { %>
				<h1 class="text-center" style="font-family: Questrial;">I Forgot</h1>
				<% } else if(request.getParameter("status").equals("form-failed")) { %>
				<h1 class="text-center" style="font-family: Questrial;">I Forgot</h1>
				<div class="alert alert-danger" role="alert">
					<p style="font-family: Questrial; margin-bottom: 0; text-align: center;">폼을 전부 입력해 주세요
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</p>
				</div>
				<% } else if(request.getParameter("status").equals("mismatch-failed")) { %>
				<h1 class="text-center" style="font-family: Questrial;">I Forgot</h1>
				<div class="alert alert-danger" role="alert">
					<p style="font-family: Questrial; margin-bottom: 0; text-align: center;">입력하신 정보와 일치하는 계정이 없습니다
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</p>
				</div>
				<% } else if(request.getParameter("status").equals("ifound") && request.getAttribute("iforgotPW") != null) {%>
				<h1 class="text-center" style="font-family: Questrial;">I Found</h1>
				<div class="alert alert-success" role="alert">
					<p style="font-family: Questrial; margin-bottom: 0; text-align: center;">비밀번호는 <%= (String)request.getAttribute("iforgotPW")%> 입니다
						<button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="location.href = 'index.jsp'">
							<span aria-hidden="true">&times;</span>
						</button>
					</p>
				</div>
				<% } %>
				<form class="pt-3 pl-5 pr-5 pb-3" action="iforgot.do" method="post">
					<label for="iforgotName" style="font-family: Questrial;">UserName</label>
					<input type="text" name="iforgotName" id="iforgotName" placeholder="이름" class="form-control">
					<label for="iforgotID" style="font-family: Questrial;">UserId</label>
					<input type="text" name="iforgotID" id="iforgotID" placeholder="아이디" class="form-control">
					<br>
					<div class="button">
						<button type="submit" class="hover-button">
							<span>비밀번호 찾기</span>
						</button>
					</div>
				</form>
				<p class="text-center pb-4"><a href="index.jsp" style="color:gray;">로그인</a> | <a href="register.jsp" style="color:gray;">회원가입</a></p>

			</div>
		</div>
	</div>

</body>

</html>
