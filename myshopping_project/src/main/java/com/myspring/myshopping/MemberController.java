package com.myspring.myshopping;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myshop.service.MemberService;
import com.myshop.vo.MemberVO;

@Controller
public class MemberController {
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	
	@Autowired
	private MemberService MemberService;
	
	//ȸ������
	@RequestMapping(value="/join.do")
	public String join() {
		return "member/join";
	}
	
	//ȸ������_proc
	@RequestMapping(value="/join_proc.do", method=RequestMethod.POST)
	public ModelAndView join_proc(MemberVO vo) {
		ModelAndView mv = new ModelAndView();
		
		String security_pass = pwdEncoder.encode(vo.getPass());
		vo.setPass(security_pass);
		
		boolean result = MemberService.getJoinResult(vo);
		
		if (result) {
			mv.setViewName("member/success");
		} else {
			mv.setViewName("member/fail");
		}
		
		return mv;
	}
	
	//�α���
	@RequestMapping(value="/login.do") 
	public String login() {
		return "member/login";
	}
	
	//���̵� ã��
	@RequestMapping(value="/id_find.do")
	public String id_find() {
		return "member/id_find";
	}
	
	//�н����� ã��
	@RequestMapping(value="/pass_find.do")
	public String pass_find() {
		return "member/pass_find";
	}
	
	//����������
	@RequestMapping(value="/success.do")
	public String success() {
		return "member/success";
	}
	
	//����������
	@RequestMapping(value="/fail.do")
	public String fail() {
		return "member/fail";
	}

}
