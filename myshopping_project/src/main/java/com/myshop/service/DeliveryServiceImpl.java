package com.myshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myshop.dao.DeliveryDAO;
import com.myshop.vo.DeliveryVO;

@Service("DeliveryService")
public class DeliveryServiceImpl implements DeliveryService {
	
	@Autowired
	private DeliveryDAO DeliveryDAO;
	
	public DeliveryVO getBasicDel(String id) {
		return DeliveryDAO.getBasicDel(id);
	}
	

	
	

}
