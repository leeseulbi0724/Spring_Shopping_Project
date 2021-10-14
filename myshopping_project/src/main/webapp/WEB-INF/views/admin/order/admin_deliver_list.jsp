<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/admin_icon.png">
<title>배송 현황 | 관리자 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/admin/admin_commons.css" rel="stylesheet">
</head>
<style>
	.배송현황 { font-weight:bold; background-color:rgb(42,42,42); }
</style>
<script>
	$(document).ready(function() {
		$(".left .주문").css("display","block");
	});
</script>
<body>
	<jsp:include page="../admin_menu.jsp"></jsp:include>
	
	<div class="main">

	</div>

</body>
</html>