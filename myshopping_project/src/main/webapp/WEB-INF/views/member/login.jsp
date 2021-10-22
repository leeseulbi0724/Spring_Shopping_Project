<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>로그인 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<style>	
	.back_div {
		width:400px;
		height:500px;		
		margin:100px;
		text-align:center;
	}
	.back_div p {
		font-size:30px;
		margin-bottom:30px;
	}
	.back_div input {
		width:100%;
		margin-bottom:10px;
		border:none;
		border-bottom:1px solid lightgray;
		display:inline-block;
		font-size:15px;
	}
	.back_div button.login {
		background-color:black;
		padding:10px 30px;
		color:white;
		width:100%;
		margin:10px 0;
		border:none;
	}
	.back_div a.find {
		text-decoration:none;
		color:black;
		padding:10px 30px;
		font-size:15px;
	}
	.back_div a.find:hover {
		color:gray;
	}
	.back_div a.join {
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
<script>
	$(document).ready(function() {
		$(".login").click(function() {
			if($("#id").val() == "") {
				alert("아이디를 입력해주세요");
				$("#id").focus();
			} else if($("#pass").val() == "") {
				alert("비밀번호를 입력해주세요");
				$("#pass").focus();
			} else {
				login();
			}
		});
	});
	
	function login() {
		var form1 = $("#form").serialize(); //form 데이터
		 $.ajax({
	         type: "post",
	         url: "login_proc.do",
	         data: form1,
	         dataType: 'json',
	         success: function (result) {
	             if (result) {
	             	 location.replace("index.do");
	             } else {
	             	alert("아이디 또는 비밀번호가 틀립니다.");
	             }
	         },error:function(request,status,error){
	        	    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        }
	     });
	}
</script>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="login.do">로그인</a>
	</div>
</section>

<section class="background">
	<div class="back_div">
		<form autocomplete="off" name="login" id="form">
			<p>LOGIN</p>
			<input type="text" class="form-control" placeholder="아이디" id="id" name="id">
			<input type="password" class="form-control" placeholder="비밀번호" id="pass" name="pass">
			<button type="button" class="login">로그인</button>
			<a href="id_find.do" class="find">아이디 찾기</a>
			<a href="pass_find.do" class="find">비밀번호 찾기</a>
			<a href="join.do" class="join">회원가입</a>
		</form>
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>