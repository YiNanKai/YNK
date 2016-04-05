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
import cn.edu.nankai.graduationdesign.service.CommodityService;
import cn.edu.nankai.graduationdesign.service.UserService;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
	private static final Logger logger = LoggerFactory
			.getLogger(CommodityController.class);
	@Autowired
	private CommodityService commodityService;
	@Autowired
	private UserService userService;
	
	@RequestMapping("/showcommoditiesbyname")
	public String showCommoditiesByName(HttpServletRequest request, HttpServletResponse response) {
		
		String commodityName = request.getParameter("commodityName");
		logger.debug("[Commodity:showCommoditiesByName]: receive data is " + commodityName);
		Commodity commodity = commodityService.getCommodityByCommodityName(commodityName);
		String commodityJsonString = JSONObject.valueToString(commodity);
		logger.debug("[Commodity:showCommoditiesByName]: commodityJsonString is " + commodityJsonString);
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[Commodity:showCommoditiesByName]: output commodity to the web page");
			out.print(commodityJsonString);
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/showcommoditiesbynamewithlike")
	public String showCommoditiesByNameWithLike(HttpServletRequest request, HttpServletResponse response) {
		
		String commodityName = request.getParameter("searchData");
		logger.debug("[Commodity:showCommoditiesByNameWithLike]: receive data is " + commodityName);
		List<Commodity> commodities = commodityService.getCommoditiesByCommodityName("%"+commodityName+"%");
		int count = commodityService.getCommoditiesCountByCommodityName("%"+commodityName+"%");
		String commodityJsonString = getCommodityJson(commodities,count);
		logger.debug("[Commodity:showCommoditiesByNameWithLike]: commodityJsonString is " + commodityJsonString);
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[Commodity:showCommoditiesByNameWithLike: output commodity to the web page");
			out.print(commodityJsonString);
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping("/showcommoditydetail")
	public String showCommodityDetail(HttpServletRequest request, HttpServletResponse response) {
		
		String commodityID = request.getParameter("commodityId");
		logger.debug("[Commodity:showCommodityDetail]: receive data is " + commodityID);
		Commodity commodity = commodityService.getCommodityByCommodityID(Integer.parseInt(commodityID));
		String commodityJsonString = JSON.toJSONString(commodity);
		logger.debug("[Commodity:showCommodityDetail]: commodityJsonString is " + commodityJsonString);
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[Commodity:showCommodityDetail: output commodity to the web page");
			out.print(commodityJsonString);
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping("/showcommoditiesbypageview")
	public String showCommoditiesByPageView(HttpServletRequest request, HttpServletResponse response) {
		
		//String commodityName = request.getParameter("commodityName");
		//logger.debug("[Commodity:showCommoditiesByPageView]: receive data is " + commodityName);
		List<Commodity> commodities = commodityService.getCommoditiesSortByCommodityPageView();
		//int count = commodityService.getCommoditiesCountByCommodityName("%"+commodityName+"%");
		int count = 3;
		String commodityJsonString = getCommodityJson(commodities,count);
		logger.debug("[Commodity:showCommoditiesByPageView]: commodityJsonString is " + commodityJsonString);
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[Commodity:showCommoditiesByPageView]: output commodity to the web page");
			out.print(commodityJsonString);
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/searchResult")
	public String searchResult(HttpServletRequest request, HttpServletResponse response) {		
		return "searchResult";
	}
	@RequestMapping("/detail")
	public String detail(HttpServletRequest request, HttpServletResponse response) {		
		return "detail";
	}
	public String getCommodityJson(List<Commodity> commodities, int count) {
		logger.debug("[Commodity:getCommodityJson]:count is " + count);
		JSONObject jsonObj = new JSONObject();
		JSONArray rows = new JSONArray();
		int id = 0;
		if (commodities != null && commodities.size() > 0) {
			for (Commodity commodity : commodities) {
				JSONObject cell = new JSONObject();
				//cell.put("account", log.getuAccount());
				cell.put("commodityId", commodity.getCommodityId());
				cell.put("commodityCategory", commodity.getCommodityCategory());
				cell.put("commodityCount", commodity.getCommodityCount());
				cell.put("commodityExchangedList", commodity.getCommodityExchangedList());
				cell.put("commodityInformatiobn", commodity.getCommodityInformation());
				cell.put("commodityIsExchange", commodity.getCommodityIsExchange());
				cell.put("commodityName", commodity.getCommodityName());
				cell.put("commoditypageView", commodity.getCommodityPageView());
				cell.put("commodityPictureLink", commodity.getCommodityPictureLink());
				cell.put("commodityPrice", commodity.getCommodityPrice());
				cell.put("commodityPublishDate",commodity.getCommodityPublishDate());
				cell.put("commodityType", commodity.getCommodityType());
				cell.put("commodityUsedTime", commodity.getCommodityUsedTime());
				cell.put("commodityWantChangeCategory", commodity.getCommodityWantChangeCategory());
				cell.put("commodityWantChangeType", commodity.getCommodityWantChangeType());
				//get userName by user ID in the commodity
				cell.put("userName", userService.getUserByUserID(commodity.getUserId()).getUserName());
				rows.put(cell);
			}
		}
		jsonObj.put("total", count);
		jsonObj.put("rows", rows);
		return jsonObj.toString();
	}
	
}
