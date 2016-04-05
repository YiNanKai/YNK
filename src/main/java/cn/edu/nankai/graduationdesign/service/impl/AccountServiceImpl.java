package cn.edu.nankai.graduationdesign.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import cn.edu.nankai.graduationdesign.dao.AccountMapper;
import cn.edu.nankai.graduationdesign.model.Account;
import cn.edu.nankai.graduationdesign.service.AccountService;

@Service("AccountService")
public class AccountServiceImpl implements AccountService {

	@Resource
	private AccountMapper accountMapper;
	private static final Logger logger = LoggerFactory
			.getLogger(AccountServiceImpl.class);
	@Override
	public int removeAccountByAccountID(Integer accountId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addAccount(Account record) {
		int rows = accountMapper.insertSelective(record);
		logger.debug("[AccountServiceImpl:addAccount]:affect rows is " + rows);
		return rows;
	}

	@Override
	public Account getAccountByAccountID(Integer accountId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int changeAccountByAccountID(Account record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
