package cn.edu.nankai.graduationdesign.model;

public class Account {
    private Integer accountId;

    private Integer userId;

    private String accountLoginName;

    private String accountPassword;

    private String accountOther;

    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAccountLoginName() {
        return accountLoginName;
    }

    public void setAccountLoginName(String accountLoginName) {
        this.accountLoginName = accountLoginName == null ? null : accountLoginName.trim();
    }

    public String getAccountPassword() {
        return accountPassword;
    }

    public void setAccountPassword(String accountPassword) {
        this.accountPassword = accountPassword == null ? null : accountPassword.trim();
    }

    public String getAccountOther() {
        return accountOther;
    }

    public void setAccountOther(String accountOther) {
        this.accountOther = accountOther == null ? null : accountOther.trim();
    }

	@Override
	public String toString() {
		return "Account [accountId=" + accountId + ", userId=" + userId
				+ ", accountLoginName=" + accountLoginName
				+ ", accountPassword=" + accountPassword + ", accountOther="
				+ accountOther + "]";
	}
    
}