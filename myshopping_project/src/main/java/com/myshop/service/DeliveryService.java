package com.myshop.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.myshop.vo.DeliveryVO;

@Service
public interface DeliveryService {
	
	ArrayList<DeliveryVO> getBasicDel(String id);
	boolean getDelAdd(DeliveryVO vo);
	
	

}
