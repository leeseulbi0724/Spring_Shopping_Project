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
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
<link href="http://localhost:9000/myshopping/css/product/prod_detail.css" rel="stylesheet">
</head>
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
					<button class="바로구매"  onclick="location.href='prod_buy.do' ">바로구매</button>
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