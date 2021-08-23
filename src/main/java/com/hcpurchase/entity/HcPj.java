package com.hcpurchase.entity;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.Date;

public class HcPj {

    private Integer pjId;
    private String pjName;
    private String pjType;
    private String pjPurchaseName;
    private Double pjPrice;
    private Integer pjCount;
    private Double pjTotalPrice;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date pjStartDate;
    private Integer pjLevel;
    private Integer pjStatus;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date pjEndDate;
    private String pjOnceReason;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date pjOnceDate;
    private String pjLastReason;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date pjLastDate;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date pjUpdateDate;
    private String pjNumber;
    private String pjRemarks;
    private Date pjCreateDate;
    private Integer status;

    public Integer getPjId() {
        return pjId;
    }

    public void setPjId(Integer pjId) {
        this.pjId = pjId;
    }

    public String getPjName() {
        return pjName;
    }

    public void setPjName(String pjName) {
        this.pjName = pjName;
    }

    public String getPjType() {
        return pjType;
    }

    public void setPjType(String pjType) {
        this.pjType = pjType;
    }

    public String getPjPurchaseName() {
        return pjPurchaseName;
    }

    public void setPjPurchaseName(String pjPurchaseName) {
        this.pjPurchaseName = pjPurchaseName;
    }

    public Double getPjPrice() {
        return pjPrice;
    }

    public void setPjPrice(Double pjPrice) {
        this.pjPrice = pjPrice;
    }

    public Integer getPjCount() {
        return pjCount;
    }

    public void setPjCount(Integer pjCount) {
        this.pjCount = pjCount;
    }

    public Double getPjTotalPrice() {
        return pjTotalPrice;
    }

    public void setPjTotalPrice(Double pjTotalPrice) {
        this.pjTotalPrice = pjTotalPrice;
    }

    public Date getPjStartDate() {
        return pjStartDate;
    }

    public void setPjStartDate(Date pjStartDate) {
        this.pjStartDate = pjStartDate;
    }

    public Integer getPjLevel() {
        return pjLevel;
    }

    public void setPjLevel(Integer pjLevel) {
        this.pjLevel = pjLevel;
    }

    public Integer getPjStatus() {
        return pjStatus;
    }

    public void setPjStatus(Integer pjStatus) {
        this.pjStatus = pjStatus;
    }

    public Date getPjEndDate() {
        return pjEndDate;
    }

    public void setPjEndDate(Date pjEndDate) {
        this.pjEndDate = pjEndDate;
    }

    public String getPjOnceReason() {
        return pjOnceReason;
    }

    public void setPjOnceReason(String pjOnceReason) {
        this.pjOnceReason = pjOnceReason;
    }

    public Date getPjOnceDate() {
        return pjOnceDate;
    }

    public void setPjOnceDate(Date pjOnceDate) {
        this.pjOnceDate = pjOnceDate;
    }

    public String getPjLastReason() {
        return pjLastReason;
    }

    public void setPjLastReason(String pjLastReason) {
        this.pjLastReason = pjLastReason;
    }

    public Date getPjLastDate() {
        return pjLastDate;
    }

    public void setPjLastDate(Date pjLastDate) {
        this.pjLastDate = pjLastDate;
    }

    public Date getPjUpdateDate() {
        return pjUpdateDate;
    }

    public void setPjUpdateDate(Date pjUpdateDate) {
        this.pjUpdateDate = pjUpdateDate;
    }

    public String getPjNumber() {
        return pjNumber;
    }

    public void setPjNumber(String pjNumber) {
        this.pjNumber = pjNumber;
    }

    public String getPjRemarks() {
        return pjRemarks;
    }

    public void setPjRemarks(String pjRemarks) {
        this.pjRemarks = pjRemarks;
    }

    public Date getPjCreateDate() {
        return pjCreateDate;
    }

    public void setPjCreateDate(Date pjCreateDate) {
        this.pjCreateDate = pjCreateDate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "HcPj{" +
                "pjId=" + pjId +
                ", pjName='" + pjName + '\'' +
                ", pjType='" + pjType + '\'' +
                ", pjPurchaseName='" + pjPurchaseName + '\'' +
                ", pjPrice=" + pjPrice +
                ", pjCount=" + pjCount +
                ", pjTotalPrice=" + pjTotalPrice +
                ", pjStartDate=" + pjStartDate +
                ", pjLevel=" + pjLevel +
                ", pjStatus=" + pjStatus +
                ", pjEndDate=" + pjEndDate +
                ", pjOnceReason='" + pjOnceReason + '\'' +
                ", pjOnceDate=" + pjOnceDate +
                ", pjLastReason='" + pjLastReason + '\'' +
                ", pjLastDate=" + pjLastDate +
                ", pjUpdateDate=" + pjUpdateDate +
                ", pjNumber='" + pjNumber + '\'' +
                ", pjRemarks='" + pjRemarks + '\'' +
                ", pjCreateDate=" + pjCreateDate +
                ", status=" + status +
                '}';
    }

}
