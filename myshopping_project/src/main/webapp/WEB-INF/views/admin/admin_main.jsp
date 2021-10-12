<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/admin_icon.png">
<title>관리자 페이지</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/admin/admin_main.css" rel="stylesheet">
</head>
<body>
	<div class="title">관리자 로그인 중입니다</div>
	<div class="left">
		<div>
			<a href="admin_main.do" class="click">서비스현황</a>
			<a href="#" class="noclick">상품관리</a>
			<a href="#" class="noclick">주문관리</a>
			<a href="#" class="noclick">문의관리</a>
			<a href="#" class="noclick">회원관리</a>
			<a href="#" class="noclick">공지관리</a>
		</div>
	</div>
	<div class="main">
		<div class="판매진행현황">
			<div style="text-align:left; background-color:rgb(249,249,249); ">
				<img src="http://localhost:9000/myshopping/images/one.png"  width="10px" height="10px">판매 진행 현황
			</div>
			<div class="one_div">
				<a href="#"><div class="판매진행현황_one 입금확인중"><p>입금확인중<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 주문접수"><p>주문접수<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 발주확인"><p>발주확인<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 출고처리"><p>출고처리<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 출고지연"><p>출고지연<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 출고완료"><p>출고완료<br>0건</p></div></a>
			</div>
		</div>
		<div class="판매실적">
			<div style="text-align:left; background-color:rgb(249,249,249); ">
				<img src="http://localhost:9000/myshopping/images/two.png"  width="10px" height="10px">판매 실적
			</div>
			<div class="판매실적_box"></div>
			<div class="판매실적_box"></div>
			<div class="판매실적_box"></div>
		</div>
		<div class="클레임현황">
			<div style="text-align:left; background-color:rgb(249,249,249); ">
				<img src="http://localhost:9000/myshopping/images/five.png"  width="10px" height="10px">클레임 현황
			</div>
			<a href="#"><div class="클레임현황_box"><p>취소요청</p> <div class="취소요청">0</div></div></a>
			<a href="#"><div class="클레임현황_box"><p>반품요청</p> <div class="반품요청">0</div></div></a>
			<a href="#"><div class="클레임현황_box"><p>교환요청</p> <div class="교환요청">0</div></div></a>
		</div>
		<div class="고객문의현황">
			<div style="text-align:left; background-color:rgb(249,249,249); ">
				<img src="http://localhost:9000/myshopping/images/four.png"  width="10px" height="10px">고객 문의 현황
			</div>
		</div>
	</div>
</body>
</html>