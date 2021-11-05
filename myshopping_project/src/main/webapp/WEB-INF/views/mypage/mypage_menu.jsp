<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://localhost:9000/myshopping/css/mypage/mypage_menu.css" rel="stylesheet">
</head>
<body>
		<div class="left_div">
			<p>마이페이지</p>
			<ul class="title_ul">
				<li>쇼핑정보</li>
			</ul>
			<ul class="menu_ul">
				<a href="mypage_order.do" class="order"><li>주문목록/배송조회</li></a>
				<a href="#"><li>취소/반품/교환 내역</li></a>
				<a href="#"><li>환불/입금 내역</li></a>
				<a href="mypage_basket.do"><li>장바구니</li></a>
				<a href="#"><li>관심상품</li></a>
			</ul>
			
			<ul class="title_ul">
				<li>혜택관리</li>
			</ul>
			<ul class="menu_ul">
				<a href="mypage_coupon.do" class="coupon"><li>쿠폰</li></a>
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
				<a href="mypage_del.do" class="del"><li>배송지관리</li></a>
				<a href="#"><li>회원탈퇴</li></a>
			</ul>			
		</div>
</body>
</html>