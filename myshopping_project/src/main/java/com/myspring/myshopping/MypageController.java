package com.myspring.myshopping;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		
		DeliveryVO vo = DeliveryService.getBasicDel((String)session.getAttribute("session_id"));
		mv.setViewName("mypage/mypage_del");
		mv.addObject("vo", vo);
		
		return mv;
	}

}
