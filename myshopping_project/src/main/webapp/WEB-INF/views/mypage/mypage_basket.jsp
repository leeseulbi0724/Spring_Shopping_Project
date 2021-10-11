<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>장바구니 | 워너비슈</title>
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
		width:1200px;
		display:inline-block;
		margin:100px;
	}
	.count_box {
		background-color:rgb(250,250,250);
		text-align:left;
		font-size:13px;
		font-weight:bold;
		border:1px solid lightgray;
		padding:10px 10px;
	}
	.main_box { width:100%; }
	.pay_box {
		background-color:rgb(250,250,250);
		text-align:right;
		font-size:13px;
		border:1px solid lightgray;
		padding:5px 10px;
	}
	
	.table thead th {
		font-weight:normal;
		font-size:14px;
	}
	.table tbody tr {
		border-top:1px solid lightgray;
		vertical-align:middle;
	}
	.table img.prod_img {
		width:100%; hieght:100%; vertical-align:middle;
	}
	.table tbody { font-size:14px; }
	.상품명 {
		text-align:left;
		font-weight:bold;
	}
	.상품명>span {
		font-weight:normal;
		color:gray;
	}
	
	.선택 {
		display:inline-block;
		position:relative;
		top:25px;
	}
	.선택 button { margin-bottom:5px; }
	.주문하기 {
		border:none;
		background-color:black;
		color:white;
		width:100%;
		border-radius:4px;
	}
	.관심상품등록, .삭제 {
		border:1px solid lightgray;
		background-color:white;
		width:100%;
		border-radius:4px;
	}
	
	.결제하기 {
		float:right;
		border:none;
		background-color:rgb(10,128,192);
		color:white;
		border-radius:4px;
		margin-top:20px;
		width:200px;
		height:50px;
	}
</style>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="mypage.do">마이페이지</a> > <a href="mypage_basket.do">장바구니</a>
	</div>
</section>
<section class="background">
	<div class="back_div">
		<div class="count_box">일반상품 (1)</div>
		<div class="main_box">
			<table class="table">
			  <thead>
			    <tr>
			      <th><input type="checkbox"></th>
			      <th style="width:150px;">이미지</th>
			      <th style="width:400px;">상품정보</th>
			      <th style="width:100px;">판매가</th>
			      <th style="width:100px;">수량</th>
			      <th style="width:100px;">적립금</th>
			      <th style="width:100px;">배송비</th>
			      <th style="width:150px;">합계</th>
			      <th style="width:150px;">선택</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td><input type="checkbox"></td>
			      <td><img src="http://localhost:9000/myshopping/images/demo.jpg"  class="prod_img"></td>
			      <td class="상품명">디바 스퀘어토 기모 앵클부츠 (5cm) <br><span>[ 옵션 : 블랙(black)/240 ]</span></td>
			      <td class="판매가">12,900원</td>
			      <td>1</td>
			      <td><img src="http://localhost:9000/myshopping/images/point_icon.gif"> 129원</td>
			      <td>무료</td>
			      <td>12,900원</td>
			      <td>
			      	<div class="선택">
				      	<button class="주문하기">주문하기</button>
				      	<button class="관심상품등록">관심상품등록</button>
				      	<button class="삭제">삭제</button>
			      	</div>
			      </td>
			    </tr>
			    
			    <tr>
			      <th><input type="checkbox"></th>
			      <td><img src="http://localhost:9000/myshopping/images/demo.jpg"  class="prod_img"></td>
			      <td class="상품명">디바 스퀘어토 기모 앵클부츠 (5cm) <br><span>[ 옵션 : 블랙(black)/240 ]</span></td>
			      <td class="판매가">12,900원</td>
			      <td>1</td>
			      <td><img src="http://localhost:9000/myshopping/images/point_icon.gif"> 129원</td>
			      <td>무료</td>
			      <td>12,900원</td>
			      <td>
			      	<div class="선택">
				      	<button class="주문하기">주문하기</button>
				      	<button class="관심상품등록">관심상품등록</button>
				      	<button class="삭제">삭제</button>
			      	</div>
			      </td>
			    </tr>			   
			  </tbody>
			</table>
		</div>
		<div class="pay_box">상품구매금액 0 + 배송비 0 (무료) = 합계: <strong style="font-size:20px">0</strong>원</div>
		<div>
			<button class="결제하기">결제하기</button>
		</div>
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>