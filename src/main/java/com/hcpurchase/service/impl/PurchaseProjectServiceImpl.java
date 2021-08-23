package com.hcpurchase.service.impl;

import com.hcpurchase.dao.PurchaseProjectMapper;
import com.hcpurchase.entity.HcPj;
import com.hcpurchase.service.PurchaseProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class PurchaseProjectServiceImpl implements PurchaseProjectService {

    @Autowired
    private PurchaseProjectMapper purchaseProjectmapper;

    /*项目立项*/
    public void addProject(HcPj hcPj) {
        purchaseProjectmapper.addProject(hcPj);
    }

    /*项目查询*/
    @Override
    public List<HcPj> queryProject(Map<String, Object> map) {
        List<HcPj> hcPjs = purchaseProjectmapper.queryProject(map);
        return hcPjs;
    }

    /*项目总条数查询*/
    @Override
    public Integer queryCount() {
        Integer count = purchaseProjectmapper.queryCount();
        return count;
    }

    /*项目删除*/
    public  Integer dropById(Integer pjId){
        return purchaseProjectmapper.dropById(pjId);
    }

    /*项目修改(数据调出)*/
    public List<HcPj> updateQuery(Integer pjId){
        return purchaseProjectmapper.updateQuery(pjId);
    }

    /*项目修改(数据传入)*/
    public void updateData(HcPj hcPj){
        purchaseProjectmapper.updateData(hcPj);
    }

    /*项目审核（数据调出）*/
    public List<HcPj> reviewData(Map<String,Object> map){
        return purchaseProjectmapper.reviewData(map);
    }

    /*项目审核总条数查询*/
    public Integer reviewDataCount(HcPj hcPj){return purchaseProjectmapper.reviewDataCount(hcPj);};

    /*项目审核条件查询（数据调出）*/
    public List<HcPj> reviewDataLike(Map<String,Object> map){
        System.out.println(map);
        return purchaseProjectmapper.reviewDataLike(map);
    }

    /*项目详情数据调出*/
    public List<HcPj> datareview(HcPj hcPj){
        return purchaseProjectmapper.datareview(hcPj);
    };

    /*审核通过传回*/
    public void datatrue(Integer pjId,Integer pjStatus,String pjOnceReason,String pjLastReason){
        purchaseProjectmapper.datatrue(pjId,pjStatus,pjOnceReason,pjLastReason);
    };

    /*审核不通过传回*/
    public void datafalse(Integer pjId,Integer pjStatus,String pjOnceReason,String pjLastReason){
        purchaseProjectmapper.datafalse(pjId,pjStatus,pjOnceReason,pjLastReason);
    };
}
