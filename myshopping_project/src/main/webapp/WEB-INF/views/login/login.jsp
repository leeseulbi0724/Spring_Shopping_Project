<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshop/images/pink.png">
<title>로그인 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
</head>
<style>
	.background {
		text-align:center;
	}
	.back_div {
		width:400px;
		height:500px;
		display:inline-block;
		margin:100px;
		text-align:center;
	}
	.back_div>p {
		font-size:30px;
		margin-bottom:30px;
	}
	.back_div>input {
		width:100%;
		margin-bottom:10px;
		border:none;
		border-bottom:1px solid lightgray;
		display:inline-block;
		font-size:15px;
	}
	.back_div>button.login {
		background-color:black;
		padding:10px 30px;
		color:white;
		width:100%;
		margin:10px 0;
		border:none;
	}
	.back_div>a.find {
		text-decoration:none;
		color:black;
		padding:10px 30px;
		font-size:15px;
	}
	.back_div>a.find:hover {
		color:gray;
	}
	.back_div>a.join {
		background-color:gray;
		padding:10px 30px;
		color:white;
		width:100%;
		margin:10px 0;
		border:none;
		text-decoration:none;
		display:block;
	}
</style>
<body>
<section class="background">
	<div class="back_div">
		<p>LOGIN</p>
		<input type="text" class="form-control" placeholder="아이디">
		<input type="text" class="form-control" placeholder="비밀번호">
		<button class="login">로그인</button>
		<a href="#" class="find">아이디 찾기</a>
		<a href="#" class="find">비밀번호 찾기</a>
		<a href="#" class="join">회원가입</a>
	</div>
</section>
</body>
</html>