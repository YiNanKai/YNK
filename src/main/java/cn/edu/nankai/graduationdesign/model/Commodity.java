package cn.edu.nankai.graduationdesign.model;

import java.util.Date;

public class Commodity {
    private Integer commodityId;

    private Integer userId;

    private String commodityName;

    private Integer commodityPrice;

    private Integer commodityUsedTime;

    private String commodityType;

    private String commodityCategory;

    private String commodityWantChangeType;

    private String commodityWantChangeCategory;

    private String commodityPictureLink;

    private Integer commodityCount;

    private Boolean commodityIsExchange;

    private Date commodityPublishDate;

    private String commodityInformation;

    private Integer commodityPageView;

    private String commodityExchangedList;

    private String commodityOther;
    
    public Integer getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(Integer commodityId) {
        this.commodityId = commodityId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName == null ? null : commodityName.trim();
    }

    public Integer getCommodityPrice() {
        return commodityPrice;
    }

    public void setCommodityPrice(Integer commodityPrice) {
        this.commodityPrice = commodityPrice;
    }

    public Integer getCommodityUsedTime() {
        return commodityUsedTime;
    }

    public void setCommodityUsedTime(Integer commodityUsedTime) {
        this.commodityUsedTime = commodityUsedTime;
    }

    public String getCommodityType() {
        return commodityType;
    }

    public void setCommodityType(String commodityType) {
        this.commodityType = commodityType == null ? null : commodityType.trim();
    }

    public String getCommodityCategory() {
        return commodityCategory;
    }

    public void setCommodityCategory(String commodityCategory) {
        this.commodityCategory = commodityCategory == null ? null : commodityCategory.trim();
    }

    public String getCommodityWantChangeType() {
        return commodityWantChangeType;
    }

    public void setCommodityWantChangeType(String commodityWantChangeType) {
        this.commodityWantChangeType = commodityWantChangeType == null ? null : commodityWantChangeType.trim();
    }

    public String getCommodityWantChangeCategory() {
        return commodityWantChangeCategory;
    }

    public void setCommodityWantChangeCategory(String commodityWantChangeCategory) {
        this.commodityWantChangeCategory = commodityWantChangeCategory == null ? null : commodityWantChangeCategory.trim();
    }

    public String getCommodityPictureLink() {
        return commodityPictureLink;
    }

    public void setCommodityPictureLink(String commodityPictureLink) {
        this.commodityPictureLink = commodityPictureLink == null ? null : commodityPictureLink.trim();
    }

    public Integer getCommodityCount() {
        return commodityCount;
    }

    public void setCommodityCount(Integer commodityCount) {
        this.commodityCount = commodityCount;
    }

    public Boolean getCommodityIsExchange() {
        return commodityIsExchange;
    }

    public void setCommodityIsExchange(Boolean commodityIsExchange) {
        this.commodityIsExchange = commodityIsExchange;
    }

    public Date getCommodityPublishDate() {
        return commodityPublishDate;
    }

    public void setCommodityPublishDate(Date commodityPublishDate) {
        this.commodityPublishDate = commodityPublishDate;
    }

    public String getCommodityInformation() {
        return commodityInformation;
    }

    public void setCommodityInformation(String commodityInformation) {
        this.commodityInformation = commodityInformation == null ? null : commodityInformation.trim();
    }

    public Integer getCommodityPageView() {
        return commodityPageView;
    }

    public void setCommodityPageView(Integer commdityPageView) {
        this.commodityPageView = commdityPageView;
    }

    public String getCommodityExchangedList() {
        return commodityExchangedList;
    }

    public void setCommodityExchangedList(String commodityExchangedList) {
        this.commodityExchangedList = commodityExchangedList == null ? null : commodityExchangedList.trim();
    }

    public String getCommodityOther() {
        return commodityOther;
    }

    public void setCommodityOther(String commodityOther) {
        this.commodityOther = commodityOther == null ? null : commodityOther.trim();
    }

	@Override
	public String toString() {
		return "Commodity [commodityId=" + commodityId + ", userId=" + userId
				+ ", commodityName=" + commodityName + ", commodityPrice="
				+ commodityPrice + ", commodityUsedTime=" + commodityUsedTime
				+ ", commodityType=" + commodityType + ", commodityCategory="
				+ commodityCategory + ", commodityWantChangeType="
				+ commodityWantChangeType + ", commodityWantChangeCategory="
				+ commodityWantChangeCategory + ", commodityPictureLink="
				+ commodityPictureLink + ", commodityCount=" + commodityCount
				+ ", commodityIsExchange=" + commodityIsExchange
				+ ", commodityPublishDate=" + commodityPublishDate
				+ ", commodityInformation=" + commodityInformation
				+ ", commodityPageView=" + commodityPageView
				+ ", commodityExchangedList=" + commodityExchangedList
				+ ", commodityOther=" + commodityOther + "]";
	}
    
}