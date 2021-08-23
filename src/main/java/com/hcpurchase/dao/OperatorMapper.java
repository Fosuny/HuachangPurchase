package com.hcpurchase.dao;

import com.hcpurchase.entity.HcOperator;
import com.hcpurchase.entity.HcProduct;
import com.hcpurchase.util.ProductUtil;
import org.springframework.data.repository.query.Param;

public interface OperatorMapper {

    /*供应商添加*/
    public void operator(HcOperator hcOperator);

    /*供应商产品添加*/
    public void products(@Param("productsList") ProductUtil productsList);

}
