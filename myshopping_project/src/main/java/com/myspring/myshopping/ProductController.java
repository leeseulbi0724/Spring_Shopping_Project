package com.myspring.myshopping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	//��ǰ ����������
	@RequestMapping(value="/prod_main.do")
	public String prod_main() {
		return "product/prod_main";
	}
	
	//��ǰ ��������
	@RequestMapping(value="/prod_detail.do")
	public String prod_detail() {
		return "product/prod_detail";
	}
	
	//��ǰ ����������
	@RequestMapping(value="/prod_buy.do")
	public String prod_buy() {
		return "product/prod_buy";
	}

}
