package cn.edu.nankai.graduationdesign.dao;

import java.util.List;

import cn.edu.nankai.graduationdesign.model.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer newsId);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer newsId);
    
    List<News> selectSortByDateTime();
    
    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKeyWithBLOBs(News record);

    int updateByPrimaryKey(News record);
}