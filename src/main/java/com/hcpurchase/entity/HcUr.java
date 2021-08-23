package com.hcpurchase.entity;

public class HcUr {

    private Integer urId;
    private Integer urUserId;
    private Integer urRoleId;

    public Integer getUrId() {
        return urId;
    }

    public void setUrId(Integer urId) {
        this.urId = urId;
    }

    public Integer getUrUserId() {
        return urUserId;
    }

    public void setUrUserId(Integer urUserId) {
        this.urUserId = urUserId;
    }

    public Integer getUrRoleId() {
        return urRoleId;
    }

    public void setUrRoleId(Integer urRoleId) {
        this.urRoleId = urRoleId;
    }

    @Override
    public String toString() {
        return "HcUr{" +
                "urId=" + urId +
                ", urUserId=" + urUserId +
                ", urRoleId=" + urRoleId +
                '}';
    }
}
