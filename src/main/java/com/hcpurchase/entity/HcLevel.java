package com.hcpurchase.entity;

import java.util.Date;

public class HcLevel {

    private Integer levelId;
    private String levelType;
    private Integer  levelKey;
    private String levelValue;
    private Integer levelStatusKey;
    private String levelStatusValue;
    private Date levelDate;

    public Integer getLevelId() {
        return levelId;
    }

    public void setLevelId(Integer levelId) {
        this.levelId = levelId;
    }

    public String getLevelType() {
        return levelType;
    }

    public void setLevelType(String levelType) {
        this.levelType = levelType;
    }

    public Integer getLevelKey() {
        return levelKey;
    }

    public void setLevelKey(Integer levelKey) {
        this.levelKey = levelKey;
    }

    public String getLevelValue() {
        return levelValue;
    }

    public void setLevelValue(String levelValue) {
        this.levelValue = levelValue;
    }

    public Integer getLevelStatusKey() {
        return levelStatusKey;
    }

    public void setLevelStatusKey(Integer levelStatusKey) {
        this.levelStatusKey = levelStatusKey;
    }

    public String getLevelStatusValue() {
        return levelStatusValue;
    }

    public void setLevelStatusValue(String levelStatusValue) {
        this.levelStatusValue = levelStatusValue;
    }

    public Date getLevelDate() {
        return levelDate;
    }

    public void setLevelDate(Date levelDate) {
        this.levelDate = levelDate;
    }

    @Override
    public String toString() {
        return "HcLevel{" +
                "levelId=" + levelId +
                ", levelType=" + levelType +
                ", levelKey=" + levelKey +
                ", levelValue='" + levelValue + '\'' +
                ", levelStatusKey=" + levelStatusKey +
                ", levelStatusValue='" + levelStatusValue + '\'' +
                ", levelDate=" + levelDate +
                '}';
    }
}
