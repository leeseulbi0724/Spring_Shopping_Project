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
	.back_div { width:1300px; margin:100px; }
	
	.back_div>p { font-weight:bold; margin-bottom:20px; font-size:20px; }	
	
	.back_div a { text-decoration:none; color:black; }
	.prod {
		display:inline-block;
		font-size:14px;
		text-align:left;
		margin:10px;
	}
	.prod_name { padding:5px 0; }
	.prod_price {
		border-top:1px solid lightgray;
		padding:5px 0;
		color:gray;
	}
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section class="background">
	<div class="back_div">
		<p>BEST CHOICE</p>		
		<a href="prod_detail.do">
			<div class="prod">
				<div class="prod_img"><img src="http://localhost:9000/myshopping/images/demo.jpg" ></div>
				<div class="prod_name"><p>디바 스퀘어토 기모 앵클부츠 (5cm)</div>
				<div class="prod_price">17,900원</div>
			</div>
		</a>
		<a href="prod_detail.do">
			<div class="prod">
				<div class="prod_img"><img src="http://localhost:9000/myshopping/images/demo.jpg" ></div>
				<div class="prod_name"><p>디바 스퀘어토 기모 앵클부츠 (5cm)</div>
				<div class="prod_price">17,900원</div>
			</div>
		</a>
		<a href="prod_detail.do">
			<div class="prod">
				<div class="prod_img"><img src="http://localhost:9000/myshopping/images/demo.jpg" ></div>
				<div class="prod_name"><p>디바 스퀘어토 기모 앵클부츠 (5cm)</div>
				<div class="prod_price">17,900원</div>
			</div>
		</a>
		<a href="prod_detail.do">
			<div class="prod">
				<div class="prod_img"><img src="http://localhost:9000/myshopping/images/demo.jpg" ></div>
				<div class="prod_name"><p>디바 스퀘어토 기모 앵클부츠 (5cm)</div>
				<div class="prod_price">17,900원</div>
			</div>
		</a>
		<a href="prod_detail.do">
			<div class="prod">
				<div class="prod_img"><img src="http://localhost:9000/myshopping/images/demo.jpg" ></div>
				<div class="prod_name"><p>디바 스퀘어토 기모 앵클부츠 (5cm)</div>
				<div class="prod_price">17,900원</div>
			</div>
		</a>
		<a href="prod_detail.do">
			<div class="prod">
				<div class="prod_img"><img src="http://localhost:9000/myshopping/images/demo.jpg" ></div>
				<div class="prod_name"><p>디바 스퀘어토 기모 앵클부츠 (5cm)</div>
				<div class="prod_price">17,900원</div>
			</div>
		</a>
		<a href="prod_detail.do">
			<div class="prod">
				<div class="prod_img"><img src="http://localhost:9000/myshopping/images/demo.jpg" ></div>
				<div class="prod_name"><p>디바 스퀘어토 기모 앵클부츠 (5cm)</div>
				<div class="prod_price">17,900원</div>
			</div>
		</a>
		<a href="prod_detail.do">
			<div class="prod">
				<div class="prod_img"><img src="http://localhost:9000/myshopping/images/demo.jpg" ></div>
				<div class="prod_name"><p>디바 스퀘어토 기모 앵클부츠 (5cm)</div>
				<div class="prod_price">17,900원</div>
			</div>
		</a>
	</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>