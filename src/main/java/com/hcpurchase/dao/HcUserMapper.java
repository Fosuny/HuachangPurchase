package com.hcpurchase.dao;


import com.hcpurchase.entity.HcUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HcUserMapper {
	
    public List<HcUser> queryLogin(HcUser hcUser);

}
