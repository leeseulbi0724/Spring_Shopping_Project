package com.myshop.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myshop.vo.DeliveryVO;

@Repository
public class DeliveryDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace = "mapper.delivery";
	
	public DeliveryVO getBasicDel(String id) {
		return sqlSession.selectOne(namespace+".basic_del", id);
	}
	


}
