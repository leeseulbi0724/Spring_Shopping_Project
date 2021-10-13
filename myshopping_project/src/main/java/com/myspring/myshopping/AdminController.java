package com.myspring.myshopping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	//관리자 메인페이지
	@RequestMapping(value="/admin_main.do")
	public String admin_main() {
		return "admin/admin_main";
	}
	
	//관리자 상품등록페이지
	@RequestMapping(value = "/admin_prod_write.do")
	public String admin_prod_write() {
		return "admin/product/admin_prod_write";
	}

}
