package com.myspring.myshopping;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myshop.service.CouponService;
import com.myshop.service.DeliveryService;
import com.myshop.vo.CouponVO;
import com.myshop.vo.DeliveryVO;

@Controller
public class MypageController {	
	
	@Autowired
	private CouponService CouponService;
	@Autowired
	private DeliveryService DeliveryService;
	
	//���������� ����ȭ��
	@RequestMapping(value="/mypage.do")
	public ModelAndView mypage(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession(); //���� ����
		
		ArrayList<CouponVO> list = CouponService.getCouponResult((String) session.getAttribute("session_id"));
		mv.addObject("size", list.size());
		mv.setViewName("mypage/mypage");
		
		return mv;
	}
	
	//���������� ��ٱ���ȭ��
	@RequestMapping(value = "/mypage_basket.do")
	public String mypage_basket() {
		return "mypage/mypage_basket";
	}
	
	//���������� ����ȭ��
	@RequestMapping(value="/mypage_coupon.do")
	public ModelAndView mypage_coupon(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession(); //���� ����
		
		ArrayList<CouponVO> list = CouponService.getCouponResult((String) session.getAttribute("session_id"));
		mv.addObject("list", list);
		mv.addObject("size", list.size());
		mv.setViewName("mypage/mypage_coupon");
		
		return mv;
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
	
	//���������� ���������
	@RequestMapping(value="/mypage_del.do")
	public ModelAndView mypage_del(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();		
		HttpSession session = request.getSession(); //���� ����
		
		ArrayList<DeliveryVO> list = DeliveryService.getBasicDel((String)session.getAttribute("session_id"));
		mv.setViewName("mypage/mypage_del");
		mv.addObject("list", list);
		
		return mv;
	}
	
	//���������� ������߰�
	@RequestMapping(value="/mypage_del_add.do")
	public ModelAndView mypage_del_add() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("mypage/mypage_del_add");
		
		return mv;
	}
	
	//���������� ��ۺ��߰� DB
	@ResponseBody
	@RequestMapping(value="/del_add_proc.do", method=RequestMethod.POST)
	public boolean mypage_del_add_prod(DeliveryVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession(); //���� ����
		vo.setId((String)session.getAttribute("session_id"));		
		
		boolean result = DeliveryService.getDelAdd(vo);
		
		return result;
	}

}
