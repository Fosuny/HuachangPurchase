package com.hcpurchase.service.impl;

import com.hcpurchase.dao.HcUserMapper;
import com.hcpurchase.entity.HcUser;
import com.hcpurchase.service.HcUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HcUserServiceImpl implements HcUserService {

    @Autowired
    private HcUserMapper hcUserMapper;

    @Override
    public List<HcUser> loginHcUserService(HcUser hcUser) {

        return hcUserMapper.queryLogin(hcUser);

    }
}
