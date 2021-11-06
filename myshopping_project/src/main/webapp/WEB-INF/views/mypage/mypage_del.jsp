<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image⁄x-icon" href="http://localhost:9000/myshopping/images/pink.png">
<title>배송지관리 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="http://localhost:9000/myshopping/css/commons.css" rel="stylesheet">
<link href="http://localhost:9000/myshopping/css/mypage/mypage_del.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<script>
	$(document).ready(function() {
		 $(".추가").click(function() {
			 var url = "mypage_del_add.do";
	         var name = "popup test";
	         var option = "width = 500, height = 400, top = 150, left = 500, location = no"
	         window.open(url, name, option);
		 });
	})
</script>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<section class="title_bar">
	<div>
		<p><a href="index.do">HOME</a> > <a href="mypage.do">마이페이지</a> > <a href="mypage_del.do">배송지관리</a> 
	</div>
</section>

<section class="background">
	<div class="back_div">
		<jsp:include page="mypage_menu.jsp"></jsp:include>
	
		<div class="main_div">
			<div class="배송지목록">
				<p>배송지 목록</p>
				<ul>
					<li>주소록</li>
					<li>최근 배송지</li>
				</ul>				
				<c:forEach var = "vo"  items="${list}" >
					<c:choose>
						<c:when test="${vo.doption eq 'B' }">
							<div class="del_div">					
								<p class="d_name">${vo.name }</p>
								<span class="기본배송지">기본배송지</span>
								<p class="d_addr">${vo.addr1} ${vo.addr2 }</p>
								<p class="d_hp">${vo.hp }</p>
								<button class="수정">수정</button>
							</div>	
						</c:when>
						<c:otherwise>
							<div class="del_div">					
								<p class="d_name">${vo.name }</p>
								<p class="d_addr">${vo.addr1} ${vo.addr2 }</p>
								<p class="d_hp">${vo.hp }</p>
								<button class="수정">수정</button>
								<button class="변경">기본 배송지로 변경</button>
							</div>	
						</c:otherwise>
					</c:choose>
					
				</c:forEach>
				<button class="추가">+배송지 추가</button>
			</div>
		</div>	
	</div>
</section>

<div id="modal"></div>
  <div class="modal-con modal1">
    <a href="javascript:;" class="close">X</a>
    <p class="title">후기쓰기</p>
    <div class="con">
    	<select class="form-select" id="star" >
    		<option value="5">★★★★★
    		<option value="4">★★★★☆
    		<option value="3">★★★☆☆
    		<option value="2">★★☆☆☆
    		<option value="1">★☆☆☆☆
    	</select>
       <div>
       		<c:if test ="${v_result eq 'true'}">
       			<input type="text" class="form-control" id="content"><a class="write">등록</a>
       		</c:if>
       		<c:if test ="${v_result eq 'false'}">
       			<input type="text" class="form-control" id="content" readonly placeholder="이미 작성된 후기가 있습니다"><button class="write" disabled>등록</button>
       		</c:if>
       	</div>
    </div>
  </div>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>