package cn.edu.nankai.graduationdesign.model;

import java.util.Date;

public class News {
    private Integer newsId;

    private String newsTitle;

    private String newsSourceLink;

    private String newsPictureLink;

    private Date newsDatetime;

    private String newsOther;

    private String newsContent;

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle == null ? null : newsTitle.trim();
    }

    public String getNewsSourceLink() {
        return newsSourceLink;
    }

    public void setNewsSourceLink(String newsSourceLink) {
        this.newsSourceLink = newsSourceLink == null ? null : newsSourceLink.trim();
    }

    public String getNewsPictureLink() {
        return newsPictureLink;
    }

    public void setNewsPictureLink(String newsPictureLink) {
        this.newsPictureLink = newsPictureLink == null ? null : newsPictureLink.trim();
    }

    public Date getNewsDatetime() {
        return newsDatetime;
    }

    public void setNewsDatetime(Date newsDatetime) {
        this.newsDatetime = newsDatetime;
    }

    public String getNewsOther() {
        return newsOther;
    }

    public void setNewsOther(String newsOther) {
        this.newsOther = newsOther == null ? null : newsOther.trim();
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent == null ? null : newsContent.trim();
    }

	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", newsTitle=" + newsTitle
				+ ", newsSourceLink=" + newsSourceLink + ", newsPictureLink="
				+ newsPictureLink + ", newsDatetime=" + newsDatetime
				+ ", newsOther=" + newsOther + ", newsContent=" + newsContent
				+ "]";
	}
    
}