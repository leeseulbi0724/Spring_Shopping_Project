package com.myspring.myshopping;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myshop.service.CouponService;
import com.myshop.service.MemberService;
import com.myshop.vo.MemberVO;

@Controller
public class MemberController {
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	
	@Autowired
	private MemberService MemberService;
	@Autowired
	private CouponService CouponService;
	
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
			//�ű԰��� ���� ����
			CouponService.getNewCoupon(vo.getId());
			
			mv.setViewName("member/success");
		} else {
			mv.setViewName("member/fail");
		}
		
		return mv;
	}
	
	//�ߺ�Ȯ��
	@ResponseBody
	@RequestMapping(value="id_check.do", method=RequestMethod.POST)
	public boolean id_check(HttpServletRequest request) {
		
		boolean result = MemberService.getIdCheckResult(request.getParameter("id"));
		
		return result;
		
	}
	
	//�α���
	@RequestMapping(value="/login.do") 
	public String login() {
		return "member/login";
	}
	
	//�α���_proc
	@ResponseBody
	@RequestMapping(value="/login_proc.do", method=RequestMethod.POST)
	public boolean login_proc(HttpServletRequest request) {
		boolean result = false;
		MemberVO vo = new MemberVO();
		vo.setId(request.getParameter("id"));
		vo.setPass(request.getParameter("pass"));
		MemberVO mvo = MemberService.getLoginResult(vo);
		boolean pwCheck = pwdEncoder.matches(vo.getPass(), mvo.getPass());
		
		 HttpSession session = request.getSession(); //���� ����
		
		if (mvo != null && pwCheck) {
			result = true;
			session.setAttribute("session_id", vo.getId());			
			session.setAttribute("session_name", MemberService.getNameResult(vo.getId()));
		}		
		
		return result;
	}
	
	 //�α׾ƿ�
	 @RequestMapping(value = "/logout.do", method=RequestMethod.GET)
	 public ModelAndView logout(HttpServletRequest request) {
		 ModelAndView mv = new ModelAndView();
		 HttpSession session = request.getSession();
	     session.invalidate();
	     
	     mv.setViewName("redirect:/index.do");

	     return mv;

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
