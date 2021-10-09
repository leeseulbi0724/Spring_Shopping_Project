package com.myspring.myshopping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	//마이페이지 메인화면
	@RequestMapping(value="/mypage.do")
	public String mypage() {
		return "mypage/mypage";
	}
	
	//마이페이지 장바구니화면
	@RequestMapping(value = "/mypage_basket.do")
	public String mypage_basket() {
		return "mypage/mypage_basket";
	}

}
