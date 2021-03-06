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
	.주소검색, .중복확인, .form-select, .red, .pass_msg { font-size:13px; }
	.pass_msg { margin-left:5px; }
</style>
<script>
	$(document).ready(function() {
		$(".email-select").click(function() {
			$("#email2").val($(this).val());
		});
		
		
		$(".회원가입").click(function() {
			if ($("#id").val() == "") {
				alert("아이디를 입력해주세요");
				$('html, body').animate({scrollTop : $("#id").offset().top - 100}, 100);
				$("#id").focus();
			} else if($("#pass").val() == "") {
				alert("비밀번호를 입력해주세요");		
				$('html, body').animate({scrollTop : $("#pass").offset().top - 100}, 100);
				$("#pass").focus();
			} else if($("#pass2").val() == "") {
				alert("비밀번호 확인을 입력해주세요");		
				$('html, body').animate({scrollTop : $("#pass2").offset().top - 100}, 100);
				$("#pass2").focus();
			} else if($("#name").val() == "") {
				alert("이름을 입력해주세요");		
				$('html, body').animate({scrollTop : $("#name").offset().top - 100}, 100);
				$("#name").focus();
			} else if($("#addr1").val() == "") {
				alert("주소를 입력해주세요");		
				$('html, body').animate({scrollTop : $("#addr1").offset().top - 100}, 100);
				$("#addr1").focus();
			} else if($("#addr2").val() == "") {
				alert("주소를 입력해주세요");		
				$('html, body').animate({scrollTop : $("#addr2").offset().top - 100}, 100);
				$("#addr2").focus();
			} else if($("#hp1").val() == "") {
				alert("휴대폰번호를 입력해주세요");		
				$('html, body').animate({scrollTop : $("#hp1").offset().top - 100}, 100);
				$("#hp1").focus();
			} else if($("#hp2").val() == "") {
				alert("휴대폰번호를 입력해주세요");		
				$('html, body').animate({scrollTop : $("#hp2").offset().top - 100}, 100);
				$("#hp2").focus();
			} else if($("#hp3").val() == "") {
				alert("휴대폰번호를 입력해주세요");		
				$('html, body').animate({scrollTop : $("#hp3").offset().top - 100}, 100);
				$("#hp3").focus();
			} else if($("#email1").val() == "") {
				alert("이메일을 입력해주세요");		
				$("#email1").focus();
			} else if($("#email2").val() == "") {
				alert("이메일주소를 입력해주세요");		
				$("#email2").focus();
			} else {
				join.submit();				
			}
		});
		
		/* 비밀번호 - 비밀번호 확인 체크 */
		$("#pass2").blur(function() {
			if ($("#pass").val() != $("#pass2").val() ) { 
				$(".pass_msg").text("비밀번호가 동일하지 않습니다.").css("color","red");
				$("#pass2").val("").focus();
			} else { 
				$(".pass_msg").text("비밀번호가 동일합니다.").css("color","blue");
			}
		});
		
		/** 중복확인 **/
		$(".중복확인").click(function() {
			var id = $("#id").val();
			if ($("#id").val() == 	"") {
				alert("아이디를 입력해주세요");
				$("#id").focus();
			} else {
			    $.ajax({
			        url:"id_check.do",
			        type:"post",
			        data: {
			     	 	 id: id,
			        }, 
			        dataType:"json",
			      success:function(result){
			      		if (result) { //true이면 사용 가능 아이디
			      			alert("사용 가능한 아이디입니다");
			      			$("#pass").focus();
			      		} else { //false이면 이미 존재하는 아이디
			      			alert("이미 존재하는 아이디입니다.")
			      			$("#id").val("").focus(); 
			      		}
			        },
			        
			     });  
			}

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
					<li><button type="button" class="btn btn-outline-dark 중복확인">중복확인</button></li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>비밀번호</label></li>
					<li><input type="password" class="form-control" id="pass" name="pass"></li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>비밀번호 확인</label></li>
					<li><input type="password" class="form-control" id="pass2" name="pass2"></li>
					<li><div class="pass_msg"></div><li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>이름</label></li>
					<li><input type="text" class="form-control" id="name" name="name"></li>
				</ul>
				<ul>
					<li class="red"><div></div> <label>주소</label></li>
					<li><input type="text" class="form-control"  style="width:300px" id="addr1" name="addr1"></li>
					<li><input type="text" class="form-control"  style="width:300px" id="addr2" name="addr2"></li>
					<li><button type="button" class="btn btn-outline-dark 주소검색"  onclick="addr()" >주소검색</button></li>
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