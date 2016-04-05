package cn.edu.nankai.graduationdesign.dao;

import java.util.List;

import cn.edu.nankai.graduationdesign.model.Commodity;

public interface CommodityMapper {
	int deleteByPrimaryKey(Integer commodityId);

    int insert(Commodity record);

    int insertSelective(Commodity record);

    Commodity selectByPrimaryKey(Integer commodityId);
    
    Commodity selectByCommodityName(String commodityName);

    List<Commodity> selectListByCommodityName(String commodityLikeName);
    
    List<Commodity> selectListSortByCommodityPageView();
    
    int selectListCountByCommodityName(String commodityLikeName);
    
    int updateByPrimaryKeySelective(Commodity record);

    int updateByPrimaryKey(Commodity record);
   
}