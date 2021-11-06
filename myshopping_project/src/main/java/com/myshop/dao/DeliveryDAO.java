package com.myshop.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myshop.vo.DeliveryVO;

@Repository
public class DeliveryDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace = "mapper.delivery";
	
	public ArrayList<DeliveryVO> getBasicDel(String id) {
		List<DeliveryVO> list = sqlSession.selectList(namespace+".basic_del", id);
		return (ArrayList<DeliveryVO>) list;
	}
	
	public int getDelAdd(DeliveryVO vo) {
		return sqlSession.insert(namespace+".del_add", vo);
	}
	


}
