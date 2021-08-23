package com.hcpurchase.entity;

public class HcAu {

    private Integer auId;
    private Integer auRoleId;
    private Integer auAuthorityId;

    public Integer getAuId() {
        return auId;
    }

    public void setAuId(Integer auId) {
        this.auId = auId;
    }

    public Integer getAuRoleId() {
        return auRoleId;
    }

    public void setAuRoleId(Integer auRoleId) {
        this.auRoleId = auRoleId;
    }

    public Integer getAuAuthorityId() {
        return auAuthorityId;
    }

    public void setAuAuthorityId(Integer auAuthorityId) {
        this.auAuthorityId = auAuthorityId;
    }

    @Override
    public String toString() {
        return "HcAu{" +
                "auId=" + auId +
                ", auRoleId=" + auRoleId +
                ", auAuthorityId=" + auAuthorityId +
                '}';
    }
}
