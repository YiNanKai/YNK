package cn.edu.nankai.graduationdesign.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import cn.edu.nankai.graduationdesign.dao.UserMapper;
import cn.edu.nankai.graduationdesign.model.User;
import cn.edu.nankai.graduationdesign.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;
	private static final Logger logger = LoggerFactory
			.getLogger(UserServiceImpl.class);
	@Override
	public int removeUserByUserID(Integer userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addUser(User record) {
		// TODO Auto-generated method stub
		int rows = userMapper.insertSelective(record);
		logger.debug("[UserServiceImpl:addUser]:insert successful,affect rows is " + rows);
		return rows;
	}

	@Override
	public User getUserByUserID(Integer userId) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByPrimaryKey(userId);
		logger.debug("[UserServiceImpl:getUserByUserID]:user is " + user.toString());
		return user;
	}

	@Override
	public int changeUserByUserID(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User getUserByUserName(String userName) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByUserName(userName);
		logger.debug("[UserServiceImpl:getUserByUserName]:user is " + user.toString());
		return user;
	}

}
