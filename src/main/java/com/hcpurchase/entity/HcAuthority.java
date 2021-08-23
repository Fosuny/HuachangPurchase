package com.hcpurchase.entity;

public class HcAuthority {

    private Integer authorityId;
    private String authorityName;
    private String authorityUrl;
    private String authorityUrlName;
    private Integer authorityType;
    private Integer parentId;

    public Integer getAuthorityId() {
        return authorityId;
    }

    public void setAuthorityId(Integer authorityId) {
        this.authorityId = authorityId;
    }

    public String getAuthorityName() {
        return authorityName;
    }

    public void setAuthorityName(String authorityName) {
        this.authorityName = authorityName;
    }

    public String getAuthorityUrl() {
        return authorityUrl;
    }

    public void setAuthorityUrl(String authorityUrl) {
        this.authorityUrl = authorityUrl;
    }

    public String getAuthorityUrlName() {
        return authorityUrlName;
    }

    public void setAuthorityUrlName(String authorityUrlName) {
        this.authorityUrlName = authorityUrlName;
    }

    public Integer getAuthorityType() {
        return authorityType;
    }

    public void setAuthorityType(Integer authorityType) {
        this.authorityType = authorityType;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    @Override
    public String toString() {
        return "HcAuthority{" +
                "authorityId=" + authorityId +
                ", authorityName='" + authorityName + '\'' +
                ", authorityUrl='" + authorityUrl + '\'' +
                ", authorityUrlName='" + authorityUrlName + '\'' +
                ", authorityType=" + authorityType +
                ", parentId=" + parentId +
                '}';
    }
}
