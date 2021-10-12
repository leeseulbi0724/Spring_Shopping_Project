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
<link href="http://localhost:9000/myshopping/css/mypage/mypage_order_detail.css" rel="stylesheet">
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
			<p>주문상세조회</p>
			<div class="주문정보">
				<p>주문정보</p>
				<table class="table">
					<tr>
						<th>주문번호</th>
						<th>211011100001</th>
					</tr>
					<tr>
						<th>주문일자</th>
						<th>2021-10-12 14:55:03</th>
					</tr>
					<tr>
						<th>주문처리상태</th>
						<th>입금전 <button>주문취소 ▶</button></th>
					</tr>
				</table>
			</div>
			
			<div class="결제정보">
				<p>결제정보</p>
				<table class="table">
					<tr>
						<th><strong>총 주문금액</strong></th>
						<th><strong>17,900원</strong></th>
					</tr>
					<tr>
						<th><strong>총 할인금액</strong></th>
						<th><strong>1,000원</strong></th>
					</tr>
					<tr>
						<th><strong>총 결제금액</strong></th>
						<th><strong style="color:rgb(77,162,209);">16,900원</strong></th>
					</tr>
					<tr>
						<th style="background-color:white; padding:5px 10px;">결제수단</th>
						<th></th>
					</tr>
				</table>
			</div>
			
			<div class="주문상품정보">
				<p>주문 상품 정보</p>
				<table class="table">
					<tr>
						<th style="width:100px;">이미지</th>
						<th>상품정보</th>
						<th>수량</th>
						<th>상품구매금액</th>
						<th>배송비</th>
						<th>주문처리상태</th>
						<th>취소/교환/반품</th>
					</tr>
					<tr>
						<td><img src="http://localhost:9000/myshopping/images/demo.jpg" width=100% height=100px ></td>
						<td><a href="#">디바 스퀘어토 기모 앵클부츠 (5cm)</a><br>[ 옵션 : 블랙(black)/240 ]</td>
						<td>1</td>
						<td><strong>17,900원</strong></td>
						<td>0원</td>
						<td style="color:rgb(77,162,209);">입금전</td>
						<td>-</td>
					</tr>
					<tr>
						<td colspan="7" style="text-align:right;">상품구매금액 <strong>17,900</strong> + 배송비 0 = 합계 : <span style="color:rgb(77,162,209); font-size:18px;"><strong>17,900원</strong></span></td>
					</tr>
				</table>
			</div>
			
		</div>	
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>