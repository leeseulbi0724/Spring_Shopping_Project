<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>비밀번호 찾기 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
</head>
<style>	
	.back_div {
		width:1000px;	
		margin:100px;
		text-align:center;
	}
	
	.find_box {
		border:1px solid lightgray;
		border-radius:5px;
		width:400px;
		height:350px;
		display:inline-block;
		text-align:center;
	}
	.find_box>p {
		font-weight:bold;
		font-size:16px;
		margin:20px;
	}
	.find_box>div {
		font-size:14px;
	}
	.find_box>div>input:first-child { margin-left:20px; }
	.find_box>div>input:nth-child(2) { margin-left:10px; }
	.find_box ul { list-style:none; text-align:left; display:inline-block; }
	.find_box ul:nth-child(3) { margin-top:40px; }
	.find_box ul>li { display:inline-block; }
	.find_box ul>li>label { width:80px; }
	.find_box ul>li>input { font-size:14px; height:30px; margin-bottom:10px; }
	
	.find_box button {
		background-color:black;
		color:white;
		width:200px;
		height:50px;
		border:none;
		border-radius:4px;
		margin-top:25px;
	}
</style>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="pass_find.do">비밀번호 찾기</a>
	</div>
</section>

<section class="background">
	<div class="back_div">
		<div class="find_box">
			<p>비밀번호 찾기</p>
			<div>
				<input type="radio" name="option"> 이메일
				<input type="radio" name="option"> 휴대폰 번호
				<ul>
					<li><label>아이디</label></li>
					<li><input type="text" class="form-control">
				</ul>
				<ul>
					<li><label>이름</label></li>
					<li><input type="text" class="form-control">
				</ul>
				<ul>
					<li><label>이메일</label></li>
					<li><input type="text" class="form-control">
				</ul>
				<button>확인</button>
			</div>
		</div>
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>