package com.gd.QRCode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gd.QRCode.vo.Food;

@Mapper
public interface FoodMapper {
	Food selectFoodQRCode(String foodName);
	List<String> selectFoodList();
}
