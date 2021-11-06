package com.myshop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myshop.dao.DeliveryDAO;
import com.myshop.vo.DeliveryVO;

@Service("DeliveryService")
public class DeliveryServiceImpl implements DeliveryService {
	
	@Autowired
	private DeliveryDAO DeliveryDAO;
	
	public ArrayList<DeliveryVO> getBasicDel(String id) {
		return DeliveryDAO.getBasicDel(id);
	}
	
	public boolean getDelAdd(DeliveryVO vo) {
		int value = DeliveryDAO.getDelAdd(vo);
		boolean result = false;
		if (value != 0) {
			result = true;
		}
		return result;
	}
	

	
	

}
