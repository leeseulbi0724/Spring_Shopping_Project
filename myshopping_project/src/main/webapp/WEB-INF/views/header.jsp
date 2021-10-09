<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>워너비슈</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<style>		
	html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
	    margin: 0;
	    padding: 0;
	    border: 0;
	    font-size:100%;
	    vertical-align: baseline;
	    background: transparent;
	}
	header { font-family:LG PC; }
	.first { padding:5px 0; margin-top:-10px; }
	.second { border:none; padding:5px; }
	.third { border-top:1px solid lightgray;  padding:5px 0; margin-top:-5px; }
	.first, .second, .third { text-align:center;	border-bottom:1px solid lightgray; background-color:white; display:block; }
	.first_hd, .second_hd, .third_hd { text-align:center; width:100%; display:inline-block; }
	.fixed { border-bottom:1px solid lightgray; position:fixed; z-index:999; background-color:white; width:100%; }
	.my_div, .title_div, .menu_div {
		width:1200px;
		display:inline-block;
	}
	.my, .menu {
		display:inline-block;
		float:left;
	}
	.my ul, .menu ul {
		list-style:none;
		display:inline-block; 		
	}
	.my ul>li {
		display:inline-block;
		font-size:13px; 
		padding:7px 5px; 
		margin-top:5px;
		margin-bottom:-3px;
	}
	.menu ul>li {
		display:inline-block;
		padding:10px 20px; font-size:13px; font-family:맑은 고딕; 
	}
	.my ul>li>a, .title>a, .menu ul>li>a { text-decoration:none; color:black; } 
	.title { padding:70px; font-size:25px; font-weight:bold; font-family:맑은 고딕; }
	.title>a:hover { color:lightgray; }		
	.my ul>li>a:hover, .menu ul>li>a:hover { color:gray; }
	
	.my ul>li>a>img { width:20px; height:20px; margin-bottom:-5px; }
	
	.menu_img_div { display:inline-block; position:relative; top:8px; }
	.menu_img { width:30px; height:30px; cursor:pointer; }
	.menu_ul_div { display:inline-block; margin-left:30px; }
	
	.detail {
		background-color:white;
		width:1100px;
		height:500px; 
		display:none;
		position:absolute;
		margin-top:12px;
		border:1px solid; 
	}
	
	
	@media(max-width:600px) {
		.first_hd, .second_hd, .third_hd { width:500px; }
		.title { font-size:20px; }
		.menu_div { width:85%; }
		.menu ul>li { padding:5px; font-size:10px; }
	}
</style>
<script>

/* 	var didScroll;
	var lastScrollTop = 0;
	var delta = 5;
	var navbarHeight = $('header').outerHeight();

	$(window).scroll(function(event){ 
		didScroll = true; 
	}); 
	
	setInterval(function() { 
		if (didScroll) {
			hasScrolled(); didScroll = false; 
		} 
	}, 10); 
	
	function hasScrolled() { 
		var st = $(this).scrollTop(); 
		// Make sure they scroll more than delta 
		
		if(Math.abs(lastScrollTop - st) <= delta) 
			return; 
		// If they scrolled down and are past the navbar, add class .nav-up. 
		// This is necessary so you never see what is "behind" the navbar. 
		
		if (st > lastScrollTop && st > navbarHeight){ 
			// Scroll Down 
			$('.title_div').slideUp();
		} else { 
			// Scroll Up 
			if($(".title_div").height() < $(document).height()) { 
				$('.title_div').slideDown();
			} 
		} lastScrollTop = st; 
	}
	 */
	
	$(document).ready(function() {
		$(".menu_img").hover(function() {					
			$(this).attr("src", "http://localhost:9000/myshopping/images/menu_black.png");	
			$(".detail").css("display","block");
		}, function() {
			$(this).attr("src", "http://localhost:9000/myshopping/images/menu_white.png");	
			$(".detail").css("display","none");
		});
	});

</script>
</head>
<body>
<header>
	<section class="first">
	<div class="fixed">
		<div class="first_hd">
			<div class="my_div">
				<div class="my">
					<ul>
						<li><a href="index.do"><img src="http://localhost:9000/myshopping/images/home.png" class="home"></a></li>
						<li><a href="login.do">로그인</a></li>
						<li><a href="join.do">회원가입</a></li>
						<li><a href="#"><b>공지사항</b></a></li>
						<li><a href="#"><b>EVENT</b></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section class="second">
		<div class="second_hd">
			<div class="title_div">
				<div class="title"><a href="index.do">WANNABE SHOE</a></div>
			</div>
		</div>
	</section>
	<section class="third">
	<div>
		<div class="third_hd">
			<div class="menu_div">
				<div class="menu">
					<div class="menu_img_div">
						<img src="http://localhost:9000/myshopping/images/menu_white.png" class="menu_img">
					</div>
					<div class="menu_ul_div">
						<ul>						
							<li><a href="#">베스트</a></li>
							<li><a href="#">신상품</a></li>
							<li><a href="#">SALE</a></li>
							<li><a href="#">뮬/블로퍼</a></li>
							<li><a href="#">앵클</a></li>
							<li><a href="#">워커</a></li>
							<li><a href="#">힐</a></li>
							<li><a href="#">스니커즈/운동화</a></li>
							<li><a href="#">플랫/로퍼</a></li>
							<li><a href="#">샌들</a></li>
							<li><a href="#">부츠</a></li>
							<li><a href="#">SOCKS&amp;BAG</a></li>
							<li><a href="#">ACC</a></li>
						</ul>
						<div class="detail">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
</header>
</body>
</html>