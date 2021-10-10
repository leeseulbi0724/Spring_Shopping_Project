package com.myspring.myshopping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@RequestMapping(value="/prod_detail.do")
	public String prod_detail() {
		return "product/prod_detail";
	}

}
