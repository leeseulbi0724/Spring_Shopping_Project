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
	
	//마이페이지 쿠폰화면
	@RequestMapping(value="/mypage_coupon.do")
	public String mypage_coupon() {
		return "mypage/mypage_coupon";
	}
	
	//마이페이지 주문조회/배송조회 화면
	@RequestMapping(value="/mypage_order.do")
	public String mypage_order() {
		return "mypage/mypage_order";
	}
	
	//마이페이지 주문조회/배송조회 상세화면
	@RequestMapping(value="/mypage_order_detail.do")
	public String mypage_order_detail() {
		return "mypage/mypage_order_detail";
	}

}
