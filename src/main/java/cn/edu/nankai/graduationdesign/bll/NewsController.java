package cn.edu.nankai.graduationdesign.bll;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nankai.graduationdesign.model.Commodity;
import cn.edu.nankai.graduationdesign.model.News;
import cn.edu.nankai.graduationdesign.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Autowired
	private NewsService newsService;
	private static final Logger logger = LoggerFactory
			.getLogger(NewsController.class);
	
	@RequestMapping("/shownewss")
	public String showNewss(HttpServletRequest request, HttpServletResponse response) {
		List<News> newss = newsService.getNewsSortByDateTime();
		int count = 3;
		String newsJsonString = getNewsJson(newss,count);
		logger.debug("[NewsController:showNewss]: newsJsonString is " + newsJsonString);
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[NewController:showNewss]: output news to the web page");
			out.print(newsJsonString);
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public String getNewsJson(List<News> newss, int count) {
		logger.debug("[NewController:getNewsJson]:count is " + count);
		JSONObject jsonObj = new JSONObject();
		JSONArray rows = new JSONArray();
		int id = 0;
		if (newss != null && newss.size() > 0) {
			for (News news : newss) {
				JSONObject cell = new JSONObject();
				//cell.put("account", log.getuAccount());
				cell.put("newsContent", news.getNewsContent());
				cell.put("newsDatetime", news.getNewsDatetime());
				cell.put("newsId", news.getNewsId());
				cell.put("newsPictureLink", news.getNewsPictureLink());
				cell.put("newsSourceLink", news.getNewsSourceLink());
				cell.put("newsTitle", news.getNewsTitle());
				rows.put(cell);
			}
		}
		jsonObj.put("total", count);
		jsonObj.put("rows", rows);
		return jsonObj.toString();
	}
}
