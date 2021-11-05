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
	
	//마이페이지 메인화면
	@RequestMapping(value="/mypage.do")
	public ModelAndView mypage(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession(); //세션 생성
		
		ArrayList<CouponVO> list = CouponService.getCouponResult((String) session.getAttribute("session_id"));
		mv.addObject("size", list.size());
		mv.setViewName("mypage/mypage");
		
		return mv;
	}
	
	//마이페이지 장바구니화면
	@RequestMapping(value = "/mypage_basket.do")
	public String mypage_basket() {
		return "mypage/mypage_basket";
	}
	
	//마이페이지 쿠폰화면
	@RequestMapping(value="/mypage_coupon.do")
	public ModelAndView mypage_coupon(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession(); //세션 생성
		
		ArrayList<CouponVO> list = CouponService.getCouponResult((String) session.getAttribute("session_id"));
		mv.addObject("list", list);
		mv.addObject("size", list.size());
		mv.setViewName("mypage/mypage_coupon");
		
		return mv;
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
	
	//마이페이지 배송지관리
	@RequestMapping(value="/mypage_del.do")
	public ModelAndView mypage_del(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();		
		HttpSession session = request.getSession(); //세션 생성
		
		DeliveryVO vo = DeliveryService.getBasicDel((String)session.getAttribute("session_id"));
		mv.setViewName("mypage/mypage_del");
		mv.addObject("vo", vo);
		
		return mv;
	}

}
