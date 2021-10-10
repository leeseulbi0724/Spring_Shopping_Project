package com.myspring.myshopping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	//회원가입
	@RequestMapping(value="/join.do")
	public String join() {
		return "user/join";
	}
	
	//로그인
	@RequestMapping(value="/login.do") 
	public String login() {
		return "user/login";
	}
	
	//아이디 찾기
	@RequestMapping(value="/id_find.do")
	public String id_find() {
		return "user/id_find";
	}
	
	//패스워드 찾기
	@RequestMapping(value="/pass_find.do")
	public String pass_find() {
		return "user/pass_find";
	}

}
