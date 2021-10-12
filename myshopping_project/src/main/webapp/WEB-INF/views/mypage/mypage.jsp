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
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
<link href="http://localhost:9000/myshopping/css/mypage/mypage.css" rel="stylesheet">
</head>
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