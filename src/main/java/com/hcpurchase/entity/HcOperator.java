package com.hcpurchase.entity;

import java.util.List;

public class HcOperator {

    private Integer operatorId;
    private String operatorName;
    private String operatorPrincipal;
    private String operatorPhone;
    private String operatorAdress;
    private Integer operatorStatus;
    private Integer operatorProducts;
    private List<HcProduct> list;

    public Integer getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(Integer operatorId) {
        this.operatorId = operatorId;
    }

    public String getOperatorName() {
        return operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName;
    }

    public String getOperatorPrincipal() {
        return operatorPrincipal;
    }

    public void setOperatorPrincipal(String operatorPrincipal) {
        this.operatorPrincipal = operatorPrincipal;
    }

    public String getOperatorPhone() {
        return operatorPhone;
    }

    public void setOperatorPhone(String operatorPhone) {
        this.operatorPhone = operatorPhone;
    }

    public String getOperatorAdress() {
        return operatorAdress;
    }

    public void setOperatorAdress(String operatorAdress) {
        this.operatorAdress = operatorAdress;
    }

    public Integer getOperatorStatus() {
        return operatorStatus;
    }

    public void setOperatorStatus(Integer operatorStatus) {
        this.operatorStatus = operatorStatus;
    }

    public Integer getOperatorProducts() {
        return operatorProducts;
    }

    public void setOperatorProducts(Integer operatorProducts) {
        this.operatorProducts = operatorProducts;
    }

    public List<HcProduct> getList() {
        return list;
    }

    public void setList(List<HcProduct> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "HcOperator{" +
                "operatorId=" + operatorId +
                ", operatorName='" + operatorName + '\'' +
                ", operatorPrincipal='" + operatorPrincipal + '\'' +
                ", operatorPhone='" + operatorPhone + '\'' +
                ", operatorAdress='" + operatorAdress + '\'' +
                ", operatorStatus=" + operatorStatus +
                ", operatorProducts=" + operatorProducts +
                ", list=" + list +
                '}';
    }
}
