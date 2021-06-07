package com.gd.QRCode.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gd.QRCode.mapper.FoodMapper;
import com.gd.QRCode.vo.Food;

import lombok.extern.slf4j.Slf4j;

@Slf4j // 디버깅
@Service // 붙어있어야 객체가 만들어짐
@Transactional // spring에 트랜잭션기능이 있다. 어떤 메서드를 실행하다가 에러가뜨면 그 메서드가 있는 서비스 롤백
public class FoodService {

	@Autowired private FoodMapper foodMapper;
	
	public Map<String, Object> getFoodList(String foodName){
		
		// dao 호출
		List<String> FoodList = foodMapper.selectFoodList();
		Food foodQRCode = foodMapper.selectFoodQRCode(foodName);
		
		// 디버깅
		log.debug("FoodList : " + FoodList);
		log.debug("foodQRCode : " + foodQRCode);
		
		Map<String, Object> returnMap = new HashMap<>();
		
		returnMap.put("FoodList", FoodList);
		returnMap.put("foodQRCode", foodQRCode);
		
		return returnMap;
	}
}
