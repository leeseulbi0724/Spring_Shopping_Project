<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>회원가입 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
<script src="http://localhost:9000/myshopping/js/address.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<style>	
	.back_div {
		width:1000px;		
		margin:100px;
		text-align:center;
	}
	.back_div div.info, .add {
		margin:50px 0;
	}
	.back_div ul {
		list-style:none;
		width:100%;
		text-align:left;
		border-bottom:1px solid lightgray;
		padding:10px 0;
	}
	.back_div ul> li {
		display:inline-block;
		margin:5px 0;
	}
	.back_div li>label { font-size:14px; }		
	.back_div li>input {
		height:35px;
		font-size:14px;
	}
	.info label { width:150px; }
	.radio {
		width:20px; height:20px;
		margin:0 5px;
		vertical-align:middle;
	}
	
	.red>div {
		border-radius:50px;
		width:7px; height:7px;
		display:inline-block;
		background-color:red;
		margin:0 5px;
	}
	
	.회원가입 {
		background-color:black;
		padding:10px 30px;
		color:white;
		width:500px;
		margin:10px 0;
		border:none;
		display:inline-block;
	}
	.주소검색, .form-select, .red { font-size:13px; }
</style>
<script>
	$(document).ready(function() {
		$(".email-select").click(function() {
			$("#email2").val($(this).val());
		});
		
		
		$(".회원가입").click(function() {
			join.submit();
		});
	});
</script>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="join.do">회원가입</a>
	</div>
</section>

<section class="background">
	<div class="back_div">
		<form autocomplete="off" name="join" action="join_proc.do" method="post" >
			<div class="info">
				<ul>
					<li><strong>기본정보</strong></li>
					<li class="red" style="float:right"><div></div>필수입력정보</li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>아이디</label></li>
					<li><input type="text" class="form-control" id="id" name="id"></li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>비밀번호</label></li>
					<li><input type="password" class="form-control" id="pass" name="pass"></li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>비밀번호 확인</label></li>
					<li><input type="password" class="form-control" id="pass2" name="pass2"></li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>이름</label></li>
					<li><input type="text" class="form-control" id="name" name="name"></li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>주소</label></li>
					<li><input type="text" class="form-control"  style="width:300px" id="addr1" name="addr1"></li>
					<li><input type="text" class="form-control"  style="width:300px" id="addr2" name="addr2"></li>
					<li><button type="button" class="btn btn-outline-dark 주소검색"  onclick="addr()" >주소 검색</button></li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>휴대폰번호</label></li>
					<li><input type="text" class="form-control"  id="hp1" name="hp1"></li> -
					<li><input type="text" class="form-control" id="hp2" name="hp2"></li> -
					<li><input type="text" class="form-control"  id="hp3" name="hp3"></li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>이메일</label></li>
					<li><input type="text" class="form-control" id="email1" name="email1"></li> @
					<li><input type="text" class="form-control" id="email2" name="email2"></li>
					<li>
						<select class="form-select email-select">
							<option value="">직접입력</option>
							<option value="naver.com">네이버</option>
							<option value="nate.com">네이트</option>
							<option value="gmail.com">구글</option>
							<option value="daum.net">다음</option>
						</select>
					</li>
				</ul>
			</div>
			
			<div class="add">
				<ul>
					<li><strong>추가정보</strong></li>
				</ul>
				<ul>
					<li><label  style="width:150px">성별</label></li>
					<li><label><input type="radio" name="gender" class="radio" value="남자">남자</label></li>
					<li><label><input type="radio" name="gender" class="radio" value="여자">여자</label></li>
				</ul>
				<ul>
					<li><label style="width:150px">생년월일</label></li>
					<li><input type="text" class="form-control"  style="width:100px" id="yyyy" name="yyyy"></li>년
					<li><input type="text" class="form-control"  style="width:100px" id="mm" name="mm"></li>월
					<li><input type="text" class="form-control"  style="width:100px" id="dd" name="dd"></li>일
					<li><label><input type="radio" name="birth_type" class="radio" value="양력">양력</label></li>
					<li><label><input type="radio" name="birth_type" class="radio" value="음력">음력</label></li>
				</ul>
			</div>
			
			<button class="회원가입" type="button">회원가입</button>
		</form>
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>