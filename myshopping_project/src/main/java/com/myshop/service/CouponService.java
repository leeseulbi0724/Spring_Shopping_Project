package com.myshop.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.myshop.vo.CouponVO;

@Service
public interface CouponService {
	
	void getNewCoupon(String id);
	ArrayList<CouponVO> getCouponResult(String id);

}
