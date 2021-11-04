<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>쿠폰 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
<link href="http://localhost:9000/myshopping/css/mypage/mypage_coupon.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="mypage.do">마이페이지</a> > <a href="mypage_coupon.do">쿠폰</a> 
	</div>
</section>

<section class="background">
	<div class="back_div">
		<jsp:include page="mypage_menu.jsp"></jsp:include>
	
		<div class="main_div">
			<div class="내가보유한쿠폰">
				<p>내가 보유한 쿠폰</p>
				<ul>
					<li>사용가능한 쿠폰 <strong>${size }</strong>장</li>
					<li>종료된 쿠폰</li>
				</ul>
				<c:forEach var = "vo"  items="${list}" >	
					<div class="coupon_div">
						<c:if test = "${vo.cing eq 'Y' }">
							<p>${vo.cname }</p>
						</c:if>
						<c:if test = "${vo.cing eq 'N' }">
							<p>${vo.cname }<span>사용완료</span></p>
						</c:if>
						<c:if test = "${vo.coption eq 'W'}">
							<p><strong>${vo.cprice }</strong>원 할인</p>
						</c:if>
						<c:if test = "${vo.coption eq 'P'}">
							<p><strong>${vo.cprice }</strong>% 할인</p>
						</c:if>					
						<p>${vo.cinfo }<br>${vo.cstart } ~ ${vo.cend }까지</p>
					</div>
				</c:forEach>
			</div>
		</div>	
	</div>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>