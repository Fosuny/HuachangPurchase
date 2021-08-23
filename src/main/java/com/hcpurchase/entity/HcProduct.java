package com.hcpurchase.entity;

import java.util.Date;

public class HcProduct {

    private Integer productId;
    private String productName;
    private String productType;
    private double productPrice;
    private Date productDate;
    private Integer productShelfDate;
    private String productTimeUnit;
    private String productOperatorId;
    private Integer productStatus;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public Date getProductDate() {
        return productDate;
    }

    public void setProductDate(Date productDate) {
        this.productDate = productDate;
    }

    public Integer getProductShelfDate() {
        return productShelfDate;
    }

    public void setProductShelfDate(Integer productShelfDate) {
        this.productShelfDate = productShelfDate;
    }

    public String getProductTimeUnit() {
        return productTimeUnit;
    }

    public void setProductTimeUnit(String productTimeUnit) {
        this.productTimeUnit = productTimeUnit;
    }

    public String getProductOperatorId() {
        return productOperatorId;
    }

    public void setProductOperatorId(String productOperatorId) {
        this.productOperatorId = productOperatorId;
    }

    public Integer getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(Integer productStatus) {
        this.productStatus = productStatus;
    }

    @Override
    public String toString() {
        return "HcProduct{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", productType='" + productType + '\'' +
                ", productPrice=" + productPrice +
                ", productDate=" + productDate +
                ", productShelfDate=" + productShelfDate +
                ", productTimeUnit='" + productTimeUnit + '\'' +
                ", productOperatorId='" + productOperatorId + '\'' +
                ", productStatus=" + productStatus +
                '}';
    }
}
