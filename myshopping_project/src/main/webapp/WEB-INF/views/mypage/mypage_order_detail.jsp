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
</head>
<style>
	.order { font-weight:bold; }
	
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
		width:900px; 
		float:left;
		margin-bottom:30px;
	}
	.main_div>p {
		font-weight:bold; font-size:17px;
		text-align:left;
		margin-bottom:5px; 
	}
	
	.주문정보 {
		border-top:1px solid lightgray;
		width:100%; text-align:left;
		margin-bottom:30px;
	}
	.결제정보 { width:100%; text-align:left; margin-bottom:30px; }
	.주문상품정보 { width:100%; text-align:left; }
	.주문정보>p, .결제정보>p, .주문상품정보>p { font-weight:bold; font-size:14px; margin:10px 5px; }
	.주문정보>table, .결제정보>table, .주문상품정보>table { font-size:14px; }
	.주문정보>table th, .결제정보>table th { font-weight:normal; border:1px solid lightgray; padding:10px; }
	.주문정보>table th:first-child, .결제정보>table th:first-child { background-color:rgb(250,250,250); width:200px; }
	.주문정보>table th>button { border:1px solid gray; background-color:white; font-size:12px; margin-left:5px; }
	
	.주문상품정보 table { text-align:center; }
	.주문상품정보 th { background-color:rgb(250,250,250); border:1px solid lightgray; font-weight:normal; }
	.주문상품정보 th>img { vertical-align:middle; }
	.주문상품정보 td { vertical-align:middle; }
	.주문상품정보 tr { border:1px solid lightgray; }
</style>
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