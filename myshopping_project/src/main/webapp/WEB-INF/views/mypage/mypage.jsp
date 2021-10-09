<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>마이페이지 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
</head>
<style>
	.title_bar {
		background-color:rgb(252,252,252);
		width:100%;
		height:30px;
		border-bottom:1px solid lightgray;
		text-align:center;
	}
	.title_bar>div {
		display:inline-block;
		width:1400px;
		text-align:right;
		font-size:12px;
	}
	.title_bar>div a {
		text-decoration:none;
		color:black;
	}
	.title_bar>div a:hover { text-decoration:underline; }
	
	.background {
		text-align:center;
	}
	.back_div {
		width:1400px;
		display:inline-block;
		margin:100px;
	}
	.left_div {
		display:inline-block;
		width:250px;
		height:1000px;
		float:left;
		text-align:left;
	}
	.left_div>p {
		font-weight:bold;
		font-size:23px;
	}
	.left_div ul { list-style:none; }
	.title_ul {
		margin-top:30px;
		font-size:18px;
		font-weight:bold;
		border-bottom:1px solid;
		width:100px;
		padding:10px 0;
		margin-bottom:10px;
	}
	.menu_ul li {
		margin:5px 0;
		color:gray;
		font-size:15px;
	}
	.menu_ul a { text-decoration:none; }
	
	.info_div {
		display:inline-block;
		border:1px solid lightgray;
		width:1100px; height:300px;
		float:left;
		margin-bottom:30px;
	}
	
	.ing_div , .latest_div {
		display:inline-block;
		width:1100px; height:250px;
		float:left;
		margin-bottom:30px;
	}
	.ing_div_title, .latest_div_title {
		font-weight:bold;
		text-align:left;
		font-size:18px;
	}
	.ing_div_box, .latest_div_box {
		border:1px solid lightgray;
		width:100%; height:200px;
		margin-top:10px;
	}
	.latest_div_title span {
		color:gray; font-size:13px;
		font-weight:normal;
		margin-left:10px;
	}
	.latest_div_title a {
		text-decoration:none;
		color:gray;
		float:right;
		font-size:13px;
		font-weight:normal;
	}
</style>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="mypage.do">마이페이지</a>
	</div>
</section>

<section class="background">
	<div class="back_div">
		<div class="left_div">
			<p>마이페이지</p>
			<ul class="title_ul">
				<li>쇼핑정보</li>
			</ul>
			<ul class="menu_ul">
				<a href="#"><li>주문목록/배송조회</li></a>
				<a href="#"><li>취소/반품/교환 내역</li></a>
				<a href="#"><li>환불/입금 내역</li></a>
				<a href="mypage_basket.do"><li>장바구니</li></a>
				<a href="#"><li>찜리스트</li></a>
			</ul>
			
			<ul class="title_ul">
				<li>혜택관리</li>
			</ul>
			<ul class="menu_ul">
				<a href="#"><li>쿠폰</li></a>
				<a href="#"><li>적립금</li></a>
			</ul>
			
			<ul class="title_ul">
				<li>고객센터</li>
			</ul>
			<ul class="menu_ul">
				<a href="#"><li>1:1 문의</li></a>
			</ul>
			
			<ul class="title_ul">
				<li>회원정보</li>
			</ul>
			<ul class="menu_ul">
				<a href="#"><li>개인정보수정</li></a>
				<a href="#"><li>비밀번호변경</li></a>
				<a href="#"><li>배송지관리</li></a>
				<a href="#"><li>회원탈퇴</li></a>
			</ul>			
		</div>
		
		<div class="info_div">
			
		</div>
		
		<div class="ing_div">
			<div class="ing_div_title">진행 중인 주문</div>
			<div class="ing_div_box">
				
			</div>
		</div>
		
		<div class="latest_div">
			<div class="latest_div_title"> 최근 주문 정보<span>최근 30일 내에 주문하신 내역입니다.</span><a href="#">더보기 ▶</a></div>
			<div class="latest_div_box">
		</div>
		
		
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>