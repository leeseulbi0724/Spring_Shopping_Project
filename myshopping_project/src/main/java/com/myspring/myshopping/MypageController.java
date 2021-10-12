package com.myspring.myshopping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	//���������� ����ȭ��
	@RequestMapping(value="/mypage.do")
	public String mypage() {
		return "mypage/mypage";
	}
	
	//���������� ��ٱ���ȭ��
	@RequestMapping(value = "/mypage_basket.do")
	public String mypage_basket() {
		return "mypage/mypage_basket";
	}
	
	//���������� ����ȭ��
	@RequestMapping(value="/mypage_coupon.do")
	public String mypage_coupon() {
		return "mypage/mypage_coupon";
	}
	
	//���������� �ֹ���ȸ/�����ȸ ȭ��
	@RequestMapping(value="/mypage_order.do")
	public String mypage_order() {
		return "mypage/mypage_order";
	}
	
	//���������� �ֹ���ȸ/�����ȸ ��ȭ��
	@RequestMapping(value="/mypage_order_detail.do")
	public String mypage_order_detail() {
		return "mypage/mypage_order_detail";
	}

}
