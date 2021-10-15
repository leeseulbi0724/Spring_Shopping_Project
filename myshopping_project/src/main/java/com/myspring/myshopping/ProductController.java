package com.myspring.myshopping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	//상품 메인페이지
	@RequestMapping(value="/prod_main.do")
	public String prod_main() {
		return "product/prod_main";
	}
	
	//상품 상세페이지
	@RequestMapping(value="/prod_detail.do")
	public String prod_detail() {
		return "product/prod_detail";
	}
	
	//상품 구매페이지
	@RequestMapping(value="/prod_buy.do")
	public String prod_buy() {
		return "product/prod_buy";
	}

}
