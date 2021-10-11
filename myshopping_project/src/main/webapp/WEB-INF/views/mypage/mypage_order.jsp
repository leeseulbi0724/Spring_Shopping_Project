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
		width:900px; height:1000px;
		float:left;
		margin-bottom:30px;
	}
	.main_div>p {
		font-weight:bold; font-size:17px;
		text-align:left;
		margin-bottom:5px; 
	}
	.main_div>div.조회기간 {
		border:1px solid lightgray;
		width:100%; height:80px;
		text-align:center;
		margin-bottom:40px;
	}
	.main_div>div.조회기간>div {
		display:inline-block; width:92%; height:30px;
		text-align:left; margin-top:25px; font-size:14px;
	}
	.main_div>div.조회기간>div>span { margin:3px 10px 3px 0; }
	.오늘, .칠일, .십오일, .일개월, .삼개월, .일년, .main_div>div>div>span { float:left; }
	.main_div>div.조회기간>div>button {
		border:1px solid lightgray;
		padding:0 10px;
	}
	.오늘 { background-color:lightgray; }
	.칠일, .십오일, .일개월, .삼개월, .일년 { background-color:white; }
	.일년 { margin-right:20px; }
	
	.form-control { display:inline-block; width:150px; height:25px; font-size:13px; }
	.조회 { background-color:black; color:white; width:100px; }
	
	.내역>p { float:left;	font-size:13px; margin-bottom:5px; }
	.table { font-size:13px; }
	.table thead { 
		border-top:2px solid; border-bottom:1px solid lightgray;
		background-color:rgb(248,248,248);
	}
	.table tr { border-bottom:1px solid lightgray; }
	.table tbody td { vertical-align:middle; padding:15px 0; }
	td>span { color:rgb(171,62,85); font-weight:bold; }
	.리뷰쓰기 { border:1px solid lightgray; background-color:rgb(171,62,85); color:white; }
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