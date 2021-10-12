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
<link href="http://localhost:9000/myshopping/css/product/prod_buy.css" rel="stylesheet">
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
		<table class="table">
			<thead>
				<tr>
					<th style="font-size:18px;" colspan="2" ><strong>주문상품 1개</strong></th>
					<th>수량/상품금액</th>
					<th>할인금액</th>
					<th>할인적용금액</th>
					<th>배송비</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><img src="http://localhost:9000/myshopping/images/demo.jpg"></td>
					<td><p>디바 스퀘어토 기모 앵클부츠 (5cm)<br>[ 옵션 : 블랙(black)/240 ]</p></td>
					<td>1개<br>17,900원</td>
					<td><span style="color:rgb(230,55,64)">-1,000원</span><br><button>쿠폰적용</button></td>
					<td><strong style="font-size:17px; ">16,900원</strong></td>
					<td>무료배송</td>
				</tr>
			</tbody>
		</table>
		
		<div class="배송정보">
			<p>배송정보</p>
			<div>
				<button>배송지 변경</button>
				<p>경기도 수원시 매탄동 399-9 영진빌딩 204호<br><span>이슬비 | 010-9369-2489</span></p>
				<select class="form-select">
					<option>배송시 요청사항을 입력해주세요</option>
					<option>배송 전 연락바랍니다</option>
					<option>부재 시 문 앞에 놓아주세요</option>
					<option>직접 입력</option>
				</select>
			</div>
		</div>
		
		<div class="결제금액">
			<p>결제금액</p>
			<div>
				<ul>
					<li>
						<label>상품금액</label>
						<label>17,900원</label>
					</li>
					<li>
						<label>할인금액</label>
						<label style="color:rgb(230,55,64)">-1,000원</label>
					</li>
					<li>
						<label>배송비</label>
						<label>0원</label>
					</li>
				</ul>
				<ul>
					<li>
						<label>총 결제금액</label>
						<label>16,900원</label>
					</li>
				</ul>
				<button>결제하기</button>
			</div>
		</div>
		
		<div class="결제수단">
			<p>결제수단</p>
			<div></div>
		</div>
		
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>