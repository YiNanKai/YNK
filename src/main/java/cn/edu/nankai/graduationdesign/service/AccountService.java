package cn.edu.nankai.graduationdesign.service;

import cn.edu.nankai.graduationdesign.model.Account;

public interface AccountService {
	    int removeAccountByAccountID(Integer accountId);

	    int addAccount(Account record);

	    Account getAccountByAccountID(Integer accountId);

	    int changeAccountByAccountID(Account record);
}
