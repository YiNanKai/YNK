package cn.edu.nankai.graduationdesign.model;

public class ContactInformation {
    private Integer contactInformationId;

    private Integer userId;

    private String contactInformationName;

    private String contactInformationContent;

    private String contactInformationOther;

    public Integer getContactInformationId() {
        return contactInformationId;
    }

    public void setContactInformationId(Integer contactInformationId) {
        this.contactInformationId = contactInformationId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getContactInformationName() {
        return contactInformationName;
    }

    public void setContactInformationName(String contactInformationName) {
        this.contactInformationName = contactInformationName == null ? null : contactInformationName.trim();
    }

    public String getContactInformationContent() {
        return contactInformationContent;
    }

    public void setContactInformationContent(String contactInformationContent) {
        this.contactInformationContent = contactInformationContent == null ? null : contactInformationContent.trim();
    }

    public String getContactInformationOther() {
        return contactInformationOther;
    }

    public void setContactInformationOther(String contactInformationOther) {
        this.contactInformationOther = contactInformationOther == null ? null : contactInformationOther.trim();
    }

	@Override
	public String toString() {
		return "ContactInformation [contactInformationId="
				+ contactInformationId + ", userId=" + userId
				+ ", contactInformationName=" + contactInformationName
				+ ", contactInformationContent=" + contactInformationContent
				+ ", contactInformationOther=" + contactInformationOther + "]";
	}
    
}