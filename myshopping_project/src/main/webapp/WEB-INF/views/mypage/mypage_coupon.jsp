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
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
<link href="http://localhost:9000/myshopping/css/mypage/mypage_coupon.css" rel="stylesheet">
</head>
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