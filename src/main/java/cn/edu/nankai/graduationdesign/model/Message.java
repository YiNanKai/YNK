package cn.edu.nankai.graduationdesign.model;

import java.util.Date;

public class Message {
    private Integer messageId;

    private Integer userId;

    private Date messageDatetime;

    private String messageTargetUser;

    private String messageSourceCommodity;

    private String messageTargetCommodity;

    private String messageOther;

    public Integer getMessageId() {
        return messageId;
    }

    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getMessageDatetime() {
        return messageDatetime;
    }

    public void setMessageDatetime(Date messageDatetime) {
        this.messageDatetime = messageDatetime;
    }

    public String getMessageTargetUser() {
        return messageTargetUser;
    }

    public void setMessageTargetUser(String messageTargetUser) {
        this.messageTargetUser = messageTargetUser == null ? null : messageTargetUser.trim();
    }

    public String getMessageSourceCommodity() {
        return messageSourceCommodity;
    }

    public void setMessageSourceCommodity(String messageSourceCommodity) {
        this.messageSourceCommodity = messageSourceCommodity == null ? null : messageSourceCommodity.trim();
    }

    public String getMessageTargetCommodity() {
        return messageTargetCommodity;
    }

    public void setMessageTargetCommodity(String messageTargetCommodity) {
        this.messageTargetCommodity = messageTargetCommodity == null ? null : messageTargetCommodity.trim();
    }

    public String getMessageOther() {
        return messageOther;
    }

    public void setMessageOther(String messageOther) {
        this.messageOther = messageOther == null ? null : messageOther.trim();
    }

	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", userId=" + userId
				+ ", messageDatetime=" + messageDatetime
				+ ", messageTargetUser=" + messageTargetUser
				+ ", messageSourceCommodity=" + messageSourceCommodity
				+ ", messageTargetCommodity=" + messageTargetCommodity
				+ ", messageOther=" + messageOther + "]";
	}
    
}