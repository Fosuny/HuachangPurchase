package com.hcpurchase.service;

import com.hcpurchase.entity.HcOperator;
import com.hcpurchase.util.ProductUtil;

public interface OperatorService {

    /*供应商添加*/
    public void operator(HcOperator hcOperator);

    /*供应商产品添加*/
    public void products(ProductUtil productsList);

}
