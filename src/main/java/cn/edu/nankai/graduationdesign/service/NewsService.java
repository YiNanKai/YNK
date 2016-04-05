package cn.edu.nankai.graduationdesign.service;

import java.util.List;

import cn.edu.nankai.graduationdesign.model.News;

public interface NewsService {	
	List<News> getNewsSortByDateTime();
}
