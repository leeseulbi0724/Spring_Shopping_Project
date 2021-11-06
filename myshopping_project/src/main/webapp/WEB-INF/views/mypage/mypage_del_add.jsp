<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지추가 | 워너비슈</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://localhost:9000/myshopping/js/address.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
	.main { text-align:center; }
	.main>p {
		font-weight:bold;
		font-size:20px;	
		margin-top:20px;
	}
	.main ul { list-style:none; margin:0; padding:0; }
	.main ul>li:nth-child(3) input {
		width:305px;
	}
	.form-control {
		width:400px;
		font-size:14px;
		display:inline-block;
		margin-top:5px;
	}
	.검색, .button>button {
		border:none;
		background-color:rgb(40,148,255);
		color:white;
		border:1px solid lightgray;
		border-radius:4px;
		padding:5px 10px;
	}	
	.check { display:inline-block; text-align:left; width:380px; margin-top:10px; }
	.button { margin-top:20px; }
	.button>button { width:60%; }
</style>
<script>
	$(document).ready(function() {
		$(".add").click(function() {
			if ($("#name").val() == "") {
				alert("이름을 입력해주세요");
				$("#name").focus();
			} else if ($("#addr1").val() == "") {
				alert("주소를 입력해주세요");
				$("#addr1").focus();
			} else if ($("#addr2").val() == "") {
				alert("상세주소를 입력해주세요");
				$("#addr2").focus();
			} else if ($("#hp").val() == "") {
				alert("휴대폰 번호를 입력해주세요");
				$("#hp").focus();
			} else {
	            var form1 = $(".form").serialize();
	            $.ajax({
	                type: "post",
	                url: "del_add_proc.do",
	                data: form1,
	                dataType: 'json',
	                success: function (result) {
	                    if (result) {
	                    	alert("배송지 등록이 완료되었습니다");	                    	
	                    } else {
	                    	alert("배송지 등록이 실패되었습니다");	                    	
	                    }
	                    window.close(); //창 닫기
	                    opener.location.reload();
	                },

	            });
			}
		});
	});
</script>
</head>
<body>
	<div class="main">
		<p>배송지 추가</p>
		<form autocomplete="off" name="del_add" action="del_add_proc.do" method="post" class="form">
			<ul>
				<li>
					<input type="text" class="form-control" placeholder="이름을 입력하세요" name="name" id="name">
				</li>
				<li>				
					<input type="text" class="form-control" placeholder="주소를 입력하세요"  id="addr1" name="addr1">
				</li>
				<li>
					<input type="text" class="form-control" placeholder="상세 주소를 입력하세요" id="addr2" name="addr2">
					<button type="button" class="검색" onclick="addr()">주소 검색</button>
				</li>
				<li>
					<input type="text" class="form-control" placeholder="휴대폰 번호를 입력해주세요(-포함)" name="hp" id="hp">
				</li>
			</ul>
			<div class="check">
				<input type="checkbox">기본 배송지로 저장
			</div>
			<div class="button">
				<button type="button" class="add">배송지 등록</button>
			</div>
		</form>
	</div>
</body>
</html>