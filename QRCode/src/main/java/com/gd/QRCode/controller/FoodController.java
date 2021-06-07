package com.gd.QRCode.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gd.QRCode.service.FoodService;

import lombok.extern.slf4j.Slf4j;

@Slf4j // 디버깅
@Controller // 컴포넌트로 객체가 자동으로 만들어진다. 서블릿처럼 행동하는 클래스를 상속받음
public class FoodController {

	@Autowired private FoodService foodService;
	
	@GetMapping("/getFoodList")
	public String getFoodList(Model model, @RequestParam(value="foodName", required = false) String foodName) {
		
		log.debug("foodName : ", foodName);
		
		Map<String, Object> foodMap = foodService.getFoodList(foodName);
		
		model.addAttribute("FoodList", foodMap.get("FoodList"));
		
		return "getFoodList";
	}
}
