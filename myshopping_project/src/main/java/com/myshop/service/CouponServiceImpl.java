package com.myshop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myshop.dao.CouponDAO;
import com.myshop.vo.CouponVO;

@Service("CouponService")
public class CouponServiceImpl implements CouponService {
	
	@Autowired
	private CouponDAO CouponDAO;
	
	@Override
	public void getNewCoupon(String id) {		
		CouponDAO.getNewCoupon(id);		
	}
	
	@Override
	public ArrayList<CouponVO> getCouponResult(String id) {
		return CouponDAO.getCouponResult(id);
	}
	
	

}
