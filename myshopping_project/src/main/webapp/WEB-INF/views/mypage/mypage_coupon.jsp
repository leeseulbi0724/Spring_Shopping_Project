<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>쿠폰 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
</head>
<style>
	.coupon { font-weight:bold; }
	
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
		margin:100px 0 0 50px;
	}	
	
	.main_div {
		display:inline-block;
		width:900px; height:1000px;
		float:left;
		margin-bottom:30px;
	}
	
	.내가보유한쿠폰 { width:100%; }
	.내가보유한쿠폰>p {
		font-weight:bold; font-size:17px;
		text-align:left;
		margin-bottom:5px; 
	}
	.내가보유한쿠폰>ul { list-syle:none; text-align:left; border-top:2px solid; padding:5px 0; border-bottom:1px solid lightgray; margin:0; background-color:rgb(250,250,250); }
	.내가보유한쿠폰>ul li { display:inline-block; font-size:14px; cursor:pointer; padding:5px 10px; margin:0; }
	.내가보유한쿠폰>ul li:first-child { border-right:1px solid lightgray; }
	
	.coupon_div {
		 width:40%; height:200px; border:1px solid lightgray; margin:30px; 
		 text-align:left; padding-left:30px; border-radius:10px; display:inline-block; 
	}
	.coupon_div>p:first-child {
		font-size:16px; font-weight:bold;
		margin-top:30px; 
	}
	.coupon_div>p:first-child>span {
		border:1px solid red; border-radius:20px; font-weight:normal;
		color:red; font-size:13px; float:right; padding:5px; margin-right:20px;
	}
	.coupon_div>p:nth-child(2) { font-size:24px; }
	.coupon_div>p:nth-child(3) { font-size:13px; color:gray; margin-top:40px; }
</style>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="mypage.do">마이페이지</a> > <a href="mypage_coupon.do">쿠폰</a> 
	</div>
</section>

<section class="background">
	<div class="back_div">
		<jsp:include page="mypage_menu.jsp"></jsp:include>
	
		<div class="main_div">
			<div class="내가보유한쿠폰">
				<p>내가 보유한 쿠폰</p>
				<ul>
					<li>사용가능한 쿠폰 <strong>1</strong>장</li>
					<li>종료된 쿠폰</li>
				</ul>
				<div class="coupon_div">
					<p>신규가입</p>
					<p><strong>2,000</strong>원 할인</p>
					<p>10,000원 이상 구매시<br>2021.10.11~2021.11.11까지</p>
				</div>
				<div class="coupon_div">
					<p>신규가입</p>
					<p><strong>2,000</strong>원 할인</p>
					<p>10,000원 이상 구매시<br>2021.10.11~2021.11.11까지</p>
				</div>
				<div class="coupon_div">
					<p>신규가입<span>사용완료</span></p>
					<p><strong>2,000</strong>원 할인</p>
					<p>10,000원 이상 구매시<br>2021.10.11~2021.11.11까지</p>
				</div>
				<div class="coupon_div">
					<p>신규가입</p>
					<p><strong>2,000</strong>원 할인</p>
					<p>10,000원 이상 구매시<br>2021.10.11~2021.11.11까지</p>
				</div>
			</div>
		</div>	
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>