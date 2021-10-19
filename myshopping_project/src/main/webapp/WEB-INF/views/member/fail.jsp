<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>워너비슈</title>
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
	.box {
		border-radius:5px;
		width:400px;
		height:350px;
		display:inline-block;
		text-align:center;
	}
	.box>p {
		font-weight:bold;
		font-size:16px;
		margin:20px;
	}
	.box button {
		background-color:rgb(171,14,21);
		color:white;
		border:none;
		border-radius:4px;
		width:300px; height:50px;
	}

</style>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="join.do">회원가입</a>
	</div>
</section>

<section class="background">
	<div class="back_div">
		<div class="box">
			<img src="http://localhost:9000/myshopping/images/x.png" width=22%; height=25%; >
			<p>회원가입이 실패 되었습니다.</p>
			<button onclick="location.href='join.do' ">회원가입</button>
		</div>
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>