package cn.edu.nankai.graduationdesign.service;

import java.util.List;

import cn.edu.nankai.graduationdesign.model.Commodity;

public interface CommodityService {
	 int removeCommodityByCommodityID(Integer commodityId);

	 int AddCommodity(Commodity record);

	 Commodity getCommodityByCommodityID(Integer commodityId);

	 int changeCommodityByCommodityID(Commodity record);
	    
	 Commodity getCommodityByCommodityName(String commodityName);
	 
	 List<Commodity> getCommoditiesByCommodityName(String commodityLikeName);
	 
	 List<Commodity> getCommoditiesSortByCommodityPageView();
	 
	 int getCommoditiesCountByCommodityName(String commodityLikeName);
}
