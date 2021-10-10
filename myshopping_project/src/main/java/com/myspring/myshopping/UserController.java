package com.myspring.myshopping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	//ȸ������
	@RequestMapping(value="/join.do")
	public String join() {
		return "user/join";
	}
	
	//�α���
	@RequestMapping(value="/login.do") 
	public String login() {
		return "user/login";
	}
	
	//���̵� ã��
	@RequestMapping(value="/id_find.do")
	public String id_find() {
		return "user/id_find";
	}
	
	//�н����� ã��
	@RequestMapping(value="/pass_find.do")
	public String pass_find() {
		return "user/pass_find";
	}

}
