package com.hcpurchase.util;

import com.hcpurchase.entity.HcProduct;

import java.util.List;

public class ProductUtil {

    public List<HcProduct> productsList;

    public List<HcProduct> getHcProductsList() {
        return productsList;
    }

    public void setHcProductsList(List<HcProduct> productsList) {
        this.productsList = productsList;
    }
    public ProductUtil(){}
    public ProductUtil(List<HcProduct> productsList) {
        this.productsList = productsList;
    }

    @Override
    public String toString() {
        return "ProductUtil{" +
                "productsList=" + productsList +
                '}';
    }
}
