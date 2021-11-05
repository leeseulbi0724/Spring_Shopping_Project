package com.myshop.service;

import org.springframework.stereotype.Service;

import com.myshop.vo.DeliveryVO;

@Service
public interface DeliveryService {
	
	DeliveryVO getBasicDel(String id);
	
	

}
