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
		margin:100px 0 0 50px;
	}	
	
	.info_div {
		display:inline-block;
		border:1px solid lightgray;
		width:900px; height:300px;
		float:left;
		margin-bottom:30px;
	}
	.info_text, .info_img, .line { display:inline-block; }
	.info_text {
		float:left;
		margin-top:110px;
		text-align:left;
		margin-left:20px;
	}
	.info_text p { margin-bottom:10px; }
	.info_text span { font-size:17px; font-weight:bold; }
	.info_text a { text-decoration:none; border:1px solid lightgray; color:black; font-size:13px; padding:5px 10px; }
	
	.info_img { float:right; margin-top:100px; }
	.info_img .coupon, .bank { display:inline-block; padding:0 50px; }
	.info_img div>img { width:50px; height:50px; } 
	.info_img a { text-decoration:none; color:black; }
	
	.line { border-left:1px solid lightgray; width:1px; height:95px; margin:0 10px;  }
	
	.ing_div , .latest_div {
		display:inline-block;
		width:900px; height:250px;
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
	<jsp:include page="mypage_menu.jsp"></jsp:include>
		
		<div class="info_div">
			<div class="info_text">
				<p>이슬비님의<br><span>회원등급은 일반회원등급 입니다.</span></p>
				<a href="#">등급혜택보기</a>
			</div>
			<div class="info_img">
			 	<a href="mypage_coupon.do">
					<div class="coupon">
						<img src="http://localhost:9000/myshopping/images/coupon.png">
						<p><strong>쿠폰<br>0</strong>장</p>
					</div>
				</a>
				<div class="line"></div>
				<a href="#">
					<div class="bank">
						<img src="http://localhost:9000/myshopping/images/bank.png">
						<p><strong>적립금<br>0</strong>원</p>
					</div>
				</a>
			</div>
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