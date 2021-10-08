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
</head>
<style>
	.background {
		text-align:center;
	}
	.back_div {
		width:1000px;
		display:inline-block;
		margin:100px;
		text-align:center;
	}
	.back_div>p {
		font-size:30px;
		margin-bottom:30px;
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
	
	.red {
		float:right;
		font-size:13px;
	}
	.red>div {
		border-radius:50px;
		width:7px; height:7px;
		display:inline-block;
		background-color:red;
		margin:0 5px;
	}
	
	.back_div button {
		background-color:black;
		padding:10px 30px;
		color:white;
		width:500px;
		margin:10px 0;
		border:none;
		display:inline-block;
	}
</style>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="background">
	<div class="back_div">
		<p>회원가입</p>
		<form>
			<div class="info">
				<ul>
					<li><strong>기본정보</strong></li>
					<li class="red"><div></div>필수입력정보</li>
				</ul>
				<ul>
					<li><label>아이디</label></li>
					<li><input type="text" class="form-control"></li>
				</ul>
				<ul>
					<li><label>비밀번호</label></li>
					<li><input type="password" class="form-control"></li>
				</ul>
				<ul>
					<li><label>비밀번호 확인</label></li>
					<li><input type="password" class="form-control"></li>
				</ul>
				<ul>
					<li><label>이름</label></li>
					<li><input type="text" class="form-control"></li>
				</ul>
				<ul>
					<li><label>주소</label></li>
					<li><input type="text" class="form-control"  style="width:300px"></li>
					<li><input type="text" class="form-control"  style="width:300px"></li>
				</ul>
				<ul>
					<li><label>휴대폰번호</label></li>
					<li><input type="text" class="form-control" ></li>-
					<li><input type="text" class="form-control"></li>-
					<li><input type="text" class="form-control" ></li>
				</ul>
			</div>
			
			<div class="add">
				<ul>
					<li><strong>추가정보</strong></li>
				</ul>
				<ul>
					<li><label  style="width:150px">성별</label></li>
					<li><label><input type="radio" name="gender" class="radio">남자</label></li>
					<li><label><input type="radio" name="gender" class="radio">여자</label></li>
				</ul>
				<ul>
					<li><label style="width:150px">생년월일</label></li>
					<li><input type="text" class="form-control"  style="width:100px"></li>년
					<li><input type="text" class="form-control"  style="width:100px"></li>월
					<li><input type="text" class="form-control"  style="width:100px"></li>일
					<li><label><input type="radio" name="birth" class="radio">양력</label></li>
					<li><label><input type="radio" name="birth" class="radio">음력</label></li>
				</ul>
			</div>
			
			<button>회원가입</button>
		</form>
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>