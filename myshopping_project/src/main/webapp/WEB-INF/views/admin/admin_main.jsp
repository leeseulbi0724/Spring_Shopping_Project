<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/admin_icon.png">
<title>관리자 페이지</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<style>
	html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
	    margin: 0;
	    padding: 0;
	    border: 0;
	    font-size:100%;
	    vertical-align: baseline;
	    background: transparent;
	}
	.title {
		background-color:rgb(34,34,34);
		color:white;
		width:1903px;
		text-align:center;
		font-size:13px;
	}
	.left>div { margin-top:20px; }
	.left {
		width:200px;
		height:950px;
		background-color:rgb(34,34,34);
		display:inline-block;
		float:left;
	}
	.left a {
		text-decoration:none;
		color:white;
		font-size:13px;
		display:block;
		text-align:center;
		padding:5px 0;
	}
	.left a.click {		
		background-color:rgb(0,116,162);			
	}
	.left a.noclick {
		background-color:rgb(34,34,34);
		border-bottom:1px solid black;
	}
	.main {
		background-color:rgb(238,238,238);
		width:1703px;
		height:950px;
		display:inline-block;
		float:left;
	}
	.main>div>div:first-child {
		border-bottom:1px solid lightgray;
		font-size:13px;
		font-weight:bold;
		padding:5px 0;
	}
	.main>div { display:inline-block; }
	.main>div>div>img { margin:0 5px; }
	
	.판매진행현황 {
		background-color:white;
		width:800px; height:400px;
		margin:40px 10px 10px 50px;
		float:left; text-align:center;
	}
	.판매진행현황_one {
		display:inline-block;
		width:130px; height:130px;
		border-radius:100px;
		text-align:center;
		vertical-align:middle;
		margin:10px;
	}
	.판매진행현황_one>p {
		margin-top:40px; color:white;
	}
	.one_div {
		width:600px;
		display:inline-block;
		margin-top:30px;
	}
	.입금확인중 { background-color:rgb(76,197,205); }
	.주문접수 { background-color:rgb(225,126,144); }
	.발주확인 { background-color:rgb(168,199,123); }
	.출고처리 { background-color:rgb(200,171,217); }
	.출고지연 { background-color:rgb(247,179,42); }
	.출고완료 { background-color:rgb(147,196,228); }
	
	.판매실적 {
		background-color:white;
		width:800px; height:250px;
		float:left;
		margin:40px 0 10px 10px;
		text-align:center;
	}
	.판매실적_box {
		border:1px solid lightgray; 
		width:190px; height:200px;
		display:inline-block;
		float:left;
		margin:10px 0;
	}
	.판매실적_box:nth-child(2) { margin-left:20px; }
		
	.클레임현황 {
		background-color:white;
		width:800px; height:150px;
		float:left;
		margin:10px 10px 10px 50px;
		text-align:center;
	}
	.클레임현황_box {
		width:230px; height:100px;
		border:1px solid lightgray;
		display:inline-block;
		margin:10px;
	}
	.클레임현황_box p { margin-top:35px; display:inline-block; color:rgb(53,132,172); font-weight:bold; }
	.클레임현황_box div { 
		border-radius:30px; 
		display:inline-block;
		width:20px; height:20px;
		font-size:12px;
		color:white;
	}		
	.취소요청 { background-color:rgb(230,74,84); }
	.반품요청 { background-color:rgb(165,209,109); }
	.교환요청 { background-color:rgb(247,178,36); }
	
	.고객문의현황 {
		background-color:white;
		width:800px; height:395px;
		float:left;
		margin:-135px 0 10px 10px;
	}
	.공지사항 {
		background-color:white;
		width:800px; height:300px;
		margin:-85px 10px 0 50px;
		float:left;
	}
</style>
</head>
<body>
	<div class="title">관리자 로그인 중입니다</div>
	<div class="left">
		<div>
			<a href="admin_main.do" class="click">서비스현황</a>
			<a href="#" class="noclick">상품관리</a>
			<a href="#" class="noclick">주문관리</a>
			<a href="#" class="noclick">문의관리</a>
			<a href="#" class="noclick">회원관리</a>
			<a href="#" class="noclick">공지관리</a>
		</div>
	</div>
	<div class="main">
		<div class="판매진행현황">
			<div style="text-align:left; background-color:rgb(249,249,249); ">
				<img src="http://localhost:9000/myshopping/images/one.png"  width="10px" height="10px">판매 진행 현황
			</div>
			<div class="one_div">
				<a href="#"><div class="판매진행현황_one 입금확인중"><p>입금확인중<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 주문접수"><p>주문접수<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 발주확인"><p>발주확인<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 출고처리"><p>출고처리<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 출고지연"><p>출고지연<br>0건</p></div></a>
				<a href="#"><div class="판매진행현황_one 출고완료"><p>출고완료<br>0건</p></div></a>
			</div>
		</div>
		<div class="판매실적">
			<div style="text-align:left; background-color:rgb(249,249,249); ">
				<img src="http://localhost:9000/myshopping/images/two.png"  width="10px" height="10px">판매 실적
			</div>
			<div class="판매실적_box"></div>
			<div class="판매실적_box"></div>
			<div class="판매실적_box"></div>
			<div class="판매실적_box"></div>
		</div>
		<div class="클레임현황">
			<div style="text-align:left; background-color:rgb(249,249,249); ">
				<img src="http://localhost:9000/myshopping/images/five.png"  width="10px" height="10px">클레임 현황
			</div>
			<a href="#"><div class="클레임현황_box"><p>취소요청</p> <div class="취소요청">0</div></div></a>
			<a href="#"><div class="클레임현황_box"><p>반품요청</p> <div class="반품요청">0</div></div></a>
			<a href="#"><div class="클레임현황_box"><p>교환요청</p> <div class="교환요청">0</div></div></a>
		</div>
		<div class="고객문의현황">
			<div style="text-align:left; background-color:rgb(249,249,249); ">
				<img src="http://localhost:9000/myshopping/images/four.png"  width="10px" height="10px">고객 문의 현황
			</div>
		</div>
		<div class="공지사항">
			<div style="text-align:left; background-color:rgb(249,249,249); ">
				<img src="http://localhost:9000/myshopping/images/three.png"  width="10px" height="10px">공지사항
			</div>
		</div>
	</div>
</body>
</html>