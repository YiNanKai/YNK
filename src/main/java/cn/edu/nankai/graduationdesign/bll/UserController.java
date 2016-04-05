package cn.edu.nankai.graduationdesign.bll;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nankai.graduationdesign.model.Account;
import cn.edu.nankai.graduationdesign.model.User;
import cn.edu.nankai.graduationdesign.service.AccountService;
import cn.edu.nankai.graduationdesign.service.UserService;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private AccountService accountService;
	private static final Logger logger = LoggerFactory
			.getLogger(UserController.class);
	@RequestMapping("/registerpage")
	public String registerPage(HttpServletRequest request, HttpServletResponse response) {
		return "register";
	}
	@RequestMapping("/register")
	public String register(HttpServletRequest request, HttpServletResponse response) {
		
		String userInformationStr = request.getParameter("fillFormData");
		logger.debug("[User:register]: receive data is " + userInformationStr);
		JSONObject userInformation = new JSONObject(userInformationStr);
		logger.debug("[User:register]: userInforamtion is " + userInformation);
		logger.debug("[User:register]: userInformation.getNew_userPwd" + userInformation.get("new_userPwd"));
		int rows = userService.addUser(changeJSONObjectToUser(userInformation));
		logger.debug("[User:register]: affect rows is " + rows);
		int rowsOfAccount = accountService.addAccount(changeJSONObjectToAccount(userInformation));
		logger.debug("[User:register]: affect rowsOfAccount is " + rowsOfAccount);
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[User:register]: output true to the web page");
			out.print("true");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/*
	 * 
	 * {"new_userName":"sdfassd","new_userPwd":"123123","new_userEmail":"123@qq.com","new_userPhone":"18944531995","new_userBirth":"1995-01-09","new_userGender":"woman","new_userCollege":"历史学院,中国史学系","new_userIP":"221.238.245.31"}
	 */
	private User changeJSONObjectToUser(JSONObject userInformation){
		User user = new User();
		//user.setUserAddress(userInformation.getString(""));
		user.setUserName(userInformation.getString("new_userName"));
		user.setUserPhone(userInformation.getString("new_userPhone"));
		user.setUserEmail(userInformation.getString("new_userEmail"));
		String strUserBirth = userInformation.getString("new_userBirth");
		SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd");
		Date date = null;
		try {
			date = sdf.parse(strUserBirth);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		user.setUserAge(date);
		user.setUserSex(userInformation.getString("new_userGender").equals("woman") ? false : true);
		user.setUserCollege(userInformation.getString("new_userCollege"));
		user.setUserIp(userInformation.getString("new_userIP"));
		user.setUserStudentId(userInformation.getString("new_studentId"));
		user.setUserLastLoginTime(new Date());
		user.setUserLevel(0);
		user.setUserRegisterTime(new Date());
		user.setUserScore(50);
		user.setUserPortraitLink("www.baidu.com");
		//useruserInformation.get("new_userPwd")
		return user;
	}
	
	private Account changeJSONObjectToAccount(JSONObject userInformation){
		Account account = new Account();
		account.setAccountLoginName(userInformation.getString("new_userName"));
		account.setAccountPassword(userInformation.getString("new_userPwd"));
		account.setUserId(userService.getUserByUserName(userInformation.getString("new_userName")).getUserId());
		return account;
	}
	
	@RequestMapping("/checkstudentid")
	public String checkStudentID(HttpServletRequest request, HttpServletResponse response) {
		
		String userID = request.getParameter("new_stuID");
		logger.debug("[User:checkStudentID]: receive data is " + userID);
		//JSONObject userInformation = new JSONObject(userInformationStr);
		logger.debug("[User:checkStudentID]: userID is " + userID);
		//logger.debug("[User:checkStudentID]: userInformation.getNew_userPwd" + userInformation.get("new_userPwd"));
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[User:checkStudentID]: output true to the web page");
			out.print("true");
			//logger.debug("[User:checkStudentID]: output false to the web page");
			//out.print("false");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/checknewusername")
	public String checkNewUserName(HttpServletRequest request, HttpServletResponse response) {
		
		String userName = request.getParameter("new_userName");
		logger.debug("[User:checkNewUserName]: receive data is " + userName);
		//JSONObject userInformation = new JSONObject(userInformationStr);
		logger.debug("[User:checkNewUserName]: userName is " + userName);
		//logger.debug("[User:checkStudentID]: userInformation.getNew_userPwd" + userInformation.get("new_userPwd"));
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[User:checkNewUserName]: output true to the web page");
			out.print("true");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/checknewuseremail")
	public String checkNewUserEmail(HttpServletRequest request, HttpServletResponse response) {
		
		String userEmail = request.getParameter("new_userEmail");
		logger.debug("[User:checkNewUserEmail]: receive data is " + userEmail);
		//JSONObject userInformation = new JSONObject(userInformationStr);
		logger.debug("[User:checkNewUserEmail]: userName is " + userEmail);
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[User:checkNewUserEmail]: output true to the web page");
			out.print("true");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/checknewuserphone")
	public String checkNewUserPhone(HttpServletRequest request, HttpServletResponse response) {
		
		String userPhone = request.getParameter("new_userPhone");
		logger.debug("[User:checkNewUserPhone]: receive data is " + userPhone);
		//JSONObject userInformation = new JSONObject(userInformationStr);
		logger.debug("[User:checkNewUserPhone]: userName is " + userPhone);
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[User:checkNewUserPhone]: output true to the web page");
			out.print("true");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		
		String loginData = request.getParameter("loginData");
		logger.debug("[User:login]: receive data is " + loginData);
		JSONObject userInformation = new JSONObject(loginData);
		logger.debug("[User:login]: userInforamtion is " + loginData);
		logger.debug("[User:login]: userInformation.getuserName" + userInformation.get("userName"));
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[User:login]: output true to the web page");
			out.print("true");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;  
	}

	
	@RequestMapping("/index")
	public String index(HttpServletRequest request, HttpServletResponse response) {
		return "index";
	}
	
	@RequestMapping("/getuserdetails")
	public String getUserDetails(HttpServletRequest request,HttpServletResponse response){
		String userID = request.getParameter("userID");
		logger.debug("[UserController:getuserdetails]: receive data is " + userID);
		User user = userService.getUserByUserID(Integer.parseInt(userID));
		String userJSONString = JSON.toJSONString(user);
		logger.debug("[UserController:getuserdetails]: userJSONString is " + userJSONString);
		PrintWriter out;
		try {
			out = response.getWriter();
			logger.debug("[UserController:getuserdetails]: output user to the web page");
			out.print(userJSONString);
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
