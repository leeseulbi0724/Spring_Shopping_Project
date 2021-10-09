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

}
