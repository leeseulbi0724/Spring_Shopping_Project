<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>워너비슈</title>
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
		width:1300px;
		display:inline-block;
		margin:100px;
	}
	
	.prod_info_div { width:100%; display:inline-block; }
	.info_img {
		display:inline-block;
		float:left;
	}
	.info_text {
		width:600px;
		float:left;
		display:inline-block;
		float:right;
		border-top:2px solid;
	}
	.info_name {
		text-align:left;
		padding:10px;
		border-bottom:1px solid lightgray;
	}
	.info_price, .info_option {
		text-align:left;
		font-size:13px;
		border-bottom:1px solid lightgray;
	}
	.info_price ul { 
		list-style:none; display:inline-block;	
		margin:10px 70px 10px 0;
		padding:0;
	}
	.info_option ul {
		list-style:none; display:inline-block;	
		margin:10px 55px 10px 0; padding:0;
	}
	.info_price li, .info_option li { margin:10px; }	
	.info_option select {
		font-size:11px;
		width:350px; height:30px; 
		vertical-align:middle;
	}
	.info_order { border-bottom:1px solid lightgray; }
	.info_order p {
		font-size:12px; 
		text-align:left;
		color:gray;
		margin:10px;
	}
	.info_order table { font-size:12px; }
	.info_order thead {
		background-color:rgb(255,255,255);
		border-bottom:1px solid lightgray;
	}
	.info_order th { border:1px solid lightgray; border-bottom:none; }
	.info_order tbody { border-bottom:1px solid lightgray; }
	.info_order div {
		text-align:right;
		margin-bottom:15px;
		font-size:14px;
	}
	.info_order strong { font-size:18px; }
	.info_order span { color:gray; font-size:13px; }
	.button_div { margin-top:20px; }
	
	.바로구매 {
		border:none;
		background-color:black;
		color:white;
		width:200px; height:60px; 
		border-radius:4px;
	}
	.장바구니, .관심상품 {
		border:1px solid lightgray;
		background-color:white;
		border-radius:4px;
		width:150px; height:60px;
	}
	
	.prod_recom_div {
		margin-top:20px;
		border-top:1px solid lightgray;
		border-bottom:1px solid lightgray;
		padding:20px;
		font-size:14px;
	}
</style>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="#">???</a>
	</div>
</section>

<section class="background">
	<div class="back_div">
		<div class="prod_info_div">
			<div class="info_img">
				<img src="http://localhost:9000/myshopping/images/demo2.jpg">
			</div>
			<div class="info_text">
				<div class="info_name">디바 스퀘어토 기모 앵클부츠 (5cm)</div>
				<div class="info_price">
					<ul>
						<li>가격</li>
						<li>배송비</li>
						<li>적립금</li>
					</ul>
					<ul>
						<li><strong>17,900원</strong></li>
						<li>무료</li>
						<li>179원</li>
					</ul>
				</div>
				<div class="info_option">
					<ul>
						<li>> 색상</li>
						<li>> 사이즈</li>
					</ul>
					<ul>
						<li>
							<select class="form-select">
								<option>[필수] 옵션을 선택해주세요</option>
								<option>스웨이드블랙(SuedeBlack)</option>
								<option>블랙(Black)</option>
								<option>베이지(Beige)</option>
								<option>브라운(Brown)</option>
							</select>
						</li>
						<li>
							<select class="form-select">
								<option>[필수] 옵션을 선택해주세요</option>
								<option>225</option>
								<option>230</option>
								<option>235</option>
								<option>240</option>
								<option>245</option>
								<option>250</option>
							</select>
						</li>
					</ul>
				</div>
				<div class="info_order">
					<p>최소주문수량 1개 이상</p>
					<table class="table">
						<thead>
							<tr>
								<th style="text-align:left;">상품명</th>
								<th>상품수</th>
								<th>가격</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="text-align:left;">스웨이드블랙(SuedeBlack)/235</td>
								<td>1</td>
								<td>17,900원(<img src="http://localhost:9000/myshopping/images/point_icon.gif">179원)</td>
							</tr>
						</tbody>
					</table>
					<div>TOTAL : <strong>17,900원</strong><span> (1개)</span></div>
				</div>
				<div class="button_div">
					<button class="바로구매">바로구매</button>
					<button class="장바구니">장바구니</button>
					<button class="관심상품">관심상품</button>
				</div>
			</div>
		</div>
		<div class="prod_recom_div">
			<p><strong>RECOMMEND ITEMS</strong><br>본 상품의 구매자 분들은 아래 상품들도 함께 구매하셨습니다.</p>
		</div>
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>