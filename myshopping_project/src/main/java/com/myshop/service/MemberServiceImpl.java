package com.myshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myshop.dao.MemberDAO;
import com.myshop.vo.MemberVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public boolean getJoinResult(MemberVO vo) {
		boolean result = false;
		int value = memberDAO.getJoinResult(vo);
		
		if (value != 0) {
			result = true;
		} 
		
		return result;
	}
	
	@Override
	public MemberVO getLoginResult(MemberVO vo) {
		MemberVO mvo = memberDAO.getLoginResult(vo);
		
		return mvo;
	}
	
	@Override
	public boolean getIdCheckResult(String id) {
		boolean result = false;
		int val = memberDAO.getIdCheckResult(id);
		
		if (val==0) {
			result = true;
		}
		return result;
	}
	
	@Override
	public String getNameResult(String id) {
		String name = memberDAO.getNameResult(id);
		
		return name;
	}

}
