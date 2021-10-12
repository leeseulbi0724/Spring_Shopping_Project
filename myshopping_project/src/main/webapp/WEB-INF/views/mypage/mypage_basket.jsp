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
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
<link href="http://localhost:9000/myshopping/css/mypage/mypage_basket.css" rel="stylesheet">
</head>
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