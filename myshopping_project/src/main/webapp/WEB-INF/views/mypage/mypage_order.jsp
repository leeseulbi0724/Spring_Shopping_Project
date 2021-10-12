<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>주문조회/배송조회 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
<link href="http://localhost:9000/myshopping/css/mypage/mypage_order.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="mypage.do">마이페이지</a> > <a href="mypage_order.do">주문조회/배송조회</a> 
	</div>
</section>

<section class="background">
	<div class="back_div">
		<jsp:include page="mypage_menu.jsp"></jsp:include>
	
		<div class="main_div">
			<p>주문조회/배송조회</p>
			<div class="조회기간">
				<div>
					<span>조회기간</span>
					<button class="오늘">오늘</button>
					<button class="칠일">7일</button>
					<button class="십오일">15일</button>
					<button class="일개월">1개월</button>
					<button class="삼개월">3개월</button>
					<button class="일년">1년</button>
					<input type="date" class="form-control"> ~ <input type="date" class="form-control">
					<button class="조회">조회</button>
				</div>
			</div>
			
			<div class="내역">
				<p>총 <strong>4</strong>건</p>
				<table class="table">
					<thead>
						<tr>
							<th>날짜/주문번호</th>
							<th>상품명/옵션</th>
							<th>상품금액/수량</th>
							<th>주문상태</th>
							<th>확인/리뷰</th>							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2021/10/11<br><a href="mypage_order_detail.do">211011100001</a></td>
							<td>디바 스퀘어토 기모 앵클부츠 (5cm)<br>[ 옵션 : 블랙(black)/240 ]</td>
							<td><span>17,900원</span> / 1개</td>
							<td>결제완료</td>
							<td><button class="리뷰쓰기">리뷰쓰기</button></td>
						</tr>
						<tr>
							<td>2021/10/11<br><a href="#">211011100001</a></td>
							<td>디바 스퀘어토 기모 앵클부츠 (5cm)<br>[ 옵션 : 블랙(black)/240 ]</td>
							<td><span>17,900원</span> / 1개</td>
							<td>결제완료</td>
							<td><button class="리뷰쓰기">리뷰쓰기</button></td>
						</tr>
						<tr>
							<td>2021/10/11<br><a href="#">211011100001</a></td>
							<td>디바 스퀘어토 기모 앵클부츠 (5cm)<br>[ 옵션 : 블랙(black)/240 ]</td>
							<td><span>17,900원</span> / 1개</td>
							<td>결제완료</td>
							<td><button class="리뷰쓰기">리뷰쓰기</button></td>
						</tr>
						<tr>
							<td>2021/10/11<br><a href="#">211011100001</a></td>
							<td>디바 스퀘어토 기모 앵클부츠 (5cm)<br>[ 옵션 : 블랙(black)/240 ]</td>
							<td><span>17,900원</span> / 1개</td>
							<td>결제완료</td>
							<td><button class="리뷰쓰기">리뷰쓰기</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>	
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>