package com.hcpurchase.service.impl;

import com.hcpurchase.dao.OperatorMapper;
import com.hcpurchase.entity.HcOperator;
import com.hcpurchase.service.OperatorService;
import com.hcpurchase.util.ProductUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OperatorServiceImpl implements OperatorService {

    @Autowired
    private OperatorMapper operatorMapper;

    /*供应商添加*/
    @Override
    public void operator(HcOperator hcOperator) {
        operatorMapper.operator(hcOperator);
    }

    /*供应商产品添加*/
    @Override
    public void products(ProductUtil productsList) {
        operatorMapper.products(productsList);
    }

}
