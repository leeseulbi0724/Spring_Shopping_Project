package com.myspring.myshopping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	//������ ����������
	@RequestMapping(value="/admin_main.do")
	public String admin_main() {
		return "admin/admin_main";
	}
	
	//������ ��ǰ���������
	@RequestMapping(value = "/admin_prod_write.do")
	public ModelAndView admin_prod_write() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("admin/product/admin_prod_write");
		
		return mv;
	}
	
	//������ ��ǰ���������
	@RequestMapping(value="/admin_prod_list.do")
	public String admin_prod_list() {
		return "admin/product/admin_prod_list";
	}
	
	//������ �ֹ���Ȳ������
	@RequestMapping(value="/admin_order_list.do")
	public String admin_order_list() {
		return "admin/order/admin_order_list";
	}
	
	//������ ���/��ǰ/��ȯ��Ȳ������
	@RequestMapping(value="/admin_cancle_list.do")
	public String admin_cancle_list() {
		return "admin/order/admin_cancle_list";
	}
	
	//������ �ֹ���Ȳ������
	@RequestMapping(value="/admin_deliver_list.do")
	public String admin_deliver_list() {
		return "admin/order/admin_deliver_list";
	}

}
