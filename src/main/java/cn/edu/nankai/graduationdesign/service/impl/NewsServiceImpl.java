package cn.edu.nankai.graduationdesign.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import cn.edu.nankai.graduationdesign.dao.NewsMapper;
import cn.edu.nankai.graduationdesign.model.News;
import cn.edu.nankai.graduationdesign.service.NewsService;

@Service("NewsService")
public class NewsServiceImpl implements NewsService {
	@Resource
	private NewsMapper newsMapper;
	private static final Logger logger = LoggerFactory
			.getLogger(NewsServiceImpl.class);
	@Override
	public List<News> getNewsSortByDateTime() {
		// TODO Auto-generated method stub
		List<News> newss = newsMapper.selectSortByDateTime();
		logger.debug("[NewsServiceImpl:getNewsSortByDateTime]:"+newss);
		return newss;
	}

}
