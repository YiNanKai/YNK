package cn.edu.nankai.graduationdesign.model;

import java.util.Date;

public class User {
    private Integer userId;

    private String userName;

    private Date userAge;

    private Boolean userSex;

    private String userEmail;

    private String userPhone;

    private String userStudentId;

    private String userIp;

    private Date userLastLoginTime;

    private String userAddress;

    private Integer userLevel;

    private Date userRegisterTime;

    private Boolean userIsInUse;

    private String userCollege;

    private String userRace;

    private Integer userScore;

    private String userSignature;

    private String userOther;

    private String userPortraitLink;
    
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public Date getUserAge() {
        return userAge;
    }

    public void setUserAge(Date userAge) {
        this.userAge = userAge;
    }

    public Boolean getUserSex() {
        return userSex;
    }

    public void setUserSex(Boolean userSex) {
        this.userSex = userSex;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserStudentId() {
        return userStudentId;
    }

    public void setUserStudentId(String userStudentId) {
        this.userStudentId = userStudentId == null ? null : userStudentId.trim();
    }

    public String getUserIp() {
        return userIp;
    }

    public void setUserIp(String userIp) {
        this.userIp = userIp == null ? null : userIp.trim();
    }

    public Date getUserLastLoginTime() {
        return userLastLoginTime;
    }

    public void setUserLastLoginTime(Date userLastLoginTime) {
        this.userLastLoginTime = userLastLoginTime;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress == null ? null : userAddress.trim();
    }

    public Integer getUserLevel() {
        return userLevel;
    }

    public void setUserLevel(Integer userLevel) {
        this.userLevel = userLevel;
    }

    public Date getUserRegisterTime() {
        return userRegisterTime;
    }

    public void setUserRegisterTime(Date userRegisterTime) {
        this.userRegisterTime = userRegisterTime;
    }

    public Boolean getUserIsInUse() {
        return userIsInUse;
    }

    public void setUserIsInUse(Boolean userIsInUse) {
        this.userIsInUse = userIsInUse;
    }

    public String getUserCollege() {
        return userCollege;
    }

    public void setUserCollege(String userCollege) {
        this.userCollege = userCollege == null ? null : userCollege.trim();
    }

    public String getUserRace() {
        return userRace;
    }

    public void setUserRace(String userRace) {
        this.userRace = userRace == null ? null : userRace.trim();
    }

    public Integer getUserScore() {
        return userScore;
    }

    public void setUserScore(Integer userScore) {
        this.userScore = userScore;
    }

    public String getUserSignature() {
        return userSignature;
    }

    public void setUserSignature(String userSignature) {
        this.userSignature = userSignature == null ? null : userSignature.trim();
    }

    public String getUserOther() {
        return userOther;
    }

    public void setUserOther(String userOther) {
        this.userOther = userOther == null ? null : userOther.trim();
    }

	public String getUserPortraitLink() {
		return userPortraitLink;
	}

	public void setUserPortraitLink(String userPortraitLink) {
		this.userPortraitLink = userPortraitLink;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", userAge=" + userAge + ", userSex=" + userSex
				+ ", userEmail=" + userEmail + ", userPhone=" + userPhone
				+ ", userStudentId=" + userStudentId + ", userIp=" + userIp
				+ ", userLastLoginTime=" + userLastLoginTime + ", userAddress="
				+ userAddress + ", userLevel=" + userLevel
				+ ", userRegisterTime=" + userRegisterTime + ", userIsInUse="
				+ userIsInUse + ", userCollege=" + userCollege + ", userRace="
				+ userRace + ", userScore=" + userScore + ", userSignature="
				+ userSignature + ", userOther=" + userOther + "]";
	}
    
}