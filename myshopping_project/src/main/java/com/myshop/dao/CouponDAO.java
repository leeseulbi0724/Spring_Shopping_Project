package com.myshop.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myshop.vo.CouponVO;

@Repository
public class CouponDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace = "mapper.coupon";
	
	/** �ű԰��� �������� **/
	public void getNewCoupon(String id) {
		sqlSession.insert(namespace+".new_coupon", id);
	}
	
	/** ���� ��� **/
	public ArrayList<CouponVO> getCouponResult(String id) {
		List<CouponVO> list = sqlSession.selectList(namespace+".coupon_result", id);		
		return (ArrayList<CouponVO>)list;
	}

}
