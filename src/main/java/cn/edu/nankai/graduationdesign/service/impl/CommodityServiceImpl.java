package cn.edu.nankai.graduationdesign.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import cn.edu.nankai.graduationdesign.dao.CommodityMapper;
import cn.edu.nankai.graduationdesign.model.Commodity;
import cn.edu.nankai.graduationdesign.service.CommodityService;

@Service("CommodityService")
public class CommodityServiceImpl implements CommodityService {

	@Resource
	private CommodityMapper commodityMapper;
	private static final Logger logger = LoggerFactory
			.getLogger(CommodityServiceImpl.class);
	
	@Override
	public int removeCommodityByCommodityID(Integer commodityId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int AddCommodity(Commodity record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Commodity getCommodityByCommodityID(Integer commodityId) {
		// TODO Auto-generated method stub
		Commodity commodity = commodityMapper.selectByPrimaryKey(commodityId);
		logger.debug("[CommodityServiceImpl:getCommodityByCommodityID]:commodity is " + commodity.toString());
		return commodity;
	}

	@Override
	public int changeCommodityByCommodityID(Commodity record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Commodity getCommodityByCommodityName(String commodityName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Commodity> getCommoditiesByCommodityName(
			String commodityLikeName) {
		// TODO Auto-generated method stub
		return commodityMapper.selectListByCommodityName(commodityLikeName);
	}

	@Override
	public int getCommoditiesCountByCommodityName(String commodityLikeName) {
		// TODO Auto-generated method stub
		return commodityMapper.selectListCountByCommodityName(commodityLikeName);
	}

	@Override
	public List<Commodity> getCommoditiesSortByCommodityPageView() {
		// TODO Auto-generated method stub
		List<Commodity> commodities = commodityMapper.selectListSortByCommodityPageView();
		logger.debug("[CommodityServiceImpl:getCommoditiesSortByCommodityPageView]:commodities is " + commodities.toString());
		return commodities;
	}
}
