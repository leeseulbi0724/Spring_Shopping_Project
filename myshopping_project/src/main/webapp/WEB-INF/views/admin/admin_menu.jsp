<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/admin/admin_commons.css" rel="stylesheet">
</head>
<script>
	$(document).ready(function() {
		
		$(".noclick").click(function() {			
			var id = $(this).attr("id");
			
			if (id == "default") {
				$(this).next("ul").css("display","block");
				$(this).attr("id", "down");	
			} else {
				$(this).next("ul").css("display","none");
				$(this).attr("id", "default");
			};
			
		});		
		
	});
</script>
<body>
<div class="left">
		<div>
			<a href="admin_main.do" class="click" style="text-align:center;">서비스현황</a>
			<a class="noclick" id="default">상품관리<span>></span></a>
				<ul class="상품">
					<a href="admin_prod_write.do" class="상품등록"><li>상품 등록</li></a>
					<a href="admin_prod_list.do" class="상품목록"><li>상품 목록</li></a>
				</ul>			
			<a class="noclick" id="default">주문관리<span>></span></a>
				<ul class="주문">
					<a href="admin_order_list.do" class="주문현황"><li>주문 현황</li></a>
					<a href="admin_cancle_list.do" class="취소현황"><li>취소/반품/교환 현황</li></a>
					<a href="admin_deliver_list.do" class="배송현황"><li>배송 현황</li></a>
				</ul>					
			<a class="noclick" id="default">문의관리<span>></span></a>
			<a class="noclick" id="default">회원관리<span>></span></a>
			<a class="noclick" id="default">공지관리<span>></span></a>
	</div>
</div>
</body>
</html>