package com.myshop.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myshop.vo.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace = "mapper.member";
	
	/** ȸ������ **/
	public int getJoinResult(MemberVO vo) {
		return sqlSession.insert(namespace+".join", vo);
	}
	
	/** �α��� **/
	public MemberVO getLoginResult(MemberVO vo) {
		return sqlSession.selectOne(namespace+".login", vo);
	}
	
	/** �ߺ�Ȯ�� **/
	public int getIdCheckResult(String id) {
		return sqlSession.selectOne(namespace+".id_check", id);
	}
	
	/** �̸� �������� **/
	public String getNameResult(String id) {
		return sqlSession.selectOne(namespace+".name_result", id);
	}

}
