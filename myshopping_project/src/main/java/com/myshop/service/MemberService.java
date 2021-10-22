package com.myshop.service;

import org.springframework.stereotype.Service;

import com.myshop.vo.MemberVO;

@Service
public interface MemberService {
	
	boolean getJoinResult(MemberVO vo);
	MemberVO getLoginResult(MemberVO vo);

}
