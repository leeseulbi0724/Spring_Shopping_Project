<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/admin_icon.png">
<title>상품 등록 | 관리자 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/admin/admin_commons.css" rel="stylesheet">
<link href="http://localhost:9000/myshopping/css/admin/product/admin_prod_write.css" rel="stylesheet">
</head>
<style>
	.상품등록 { font-weight:bold; background-color:rgb(42,42,42); }
</style>
<script>
	$(document).ready(function() {
		$(".left .상품").css("display","block");
	});
</script>
<body>
	<jsp:include page="../admin_menu.jsp"></jsp:include>
	
	<div class="main">
		<div class="기본정보">
			<div>기본 정보</div>
			<div class="기본정보_div">
				<ul>
					<li><label>상태</label></li>
					<li>
						<input type="radio"><span style="color:rgb(0,184,255); ">정상</span>
						<input type="radio"><span style="color:rgb(248,91,39); ">품절</span>
						<input type="radio"><span style="color:rgb(2,172,66); ">숨김</span>
					</li>
				</ul>
				<ul>
					<li><label>상품명</label></li>
					<li><input type="text" class="form-control"></li>
				</ul>
				<ul>
					<li><label>분류</label></li>
					<li>
						<select class="form-select">
							<option>대분류</option>
						</select>
						<select class="form-select">
							<option>중분류</option>
						</select>
					</li>
				</ul>
				
			</div>
		</div>
		<div class="판매정보">
			<div>판매정보</div>
			<div class="판매정보_div">
				<ul>
					<li><label>판매가</label></li>
					<li><input type="text" class="form-control"></li>
				</ul>
				<ul>
					<li><label>배송비</label></li>
					<li>
						<input type="radio"><span style="color:rgb(0,184,255); ">2,500원</span>
						<input type="radio"><span style="color:rgb(248,91,39); ">무료배송</span>
					</li>
				</ul>
			</div>
		</div>
		<div class="버튼">
			<button>등록</button>
		</div>
	</div>

</body>
</html>