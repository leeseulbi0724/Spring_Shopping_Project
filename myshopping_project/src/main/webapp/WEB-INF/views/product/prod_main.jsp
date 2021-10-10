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
	
	.top>p {
		text-align:left;
		font-weight:bold;
		font-size:16px;
		margin-bottom:40px;
	}
	.top { margin-bottom:20px; }
	.top>div {
		text-align:left;
		font-size:13px;
		color:gray;
		border-bottom:1px solid lightgray;
		padding-bottom:10px;
	}
	.top>div>ul {
		display:inline-block;
		list-style:none;
		float:right;
	}
	.top>div>ul>li { 
		display:inline-block; 
		cursor:pointer;
	}
	.top>div>ul>li:hover {
		background-color:lightgray;
		color:white;
	}
	.line {
		border-left:1px solid lightgray;
		height:12px;
		display:inline-block;
		margin-left:7px; margin-right:2px;
	}
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
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="#">베스트</a>
	</div>
</section>

<section class="background">
	<div class="back_div">
		<div class="top">
			<p>베스트</p>		
			<div>
				Total <strong style="color:black;">11</strong> Items
				<ul>
					<li>신상품</li><div class="line"></div>
					<li>상품명</li><div class="line"></div>
					<li>낮은가격</li><div class="line"></div>
					<li>높은가격</li><div class="line"></div>
					<li>사용후기</li>
				</ul>
			</div>
		</div>
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

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>