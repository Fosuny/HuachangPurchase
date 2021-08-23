package com.hcpurchase.dao;

import com.hcpurchase.entity.HcPj;
import com.hcpurchase.entity.HcUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface  PurchaseProjectMapper {

    /*项目立项*/
    public void addProject(HcPj hcPj);

    /*项目查询*/
    public List<HcPj> queryProject(Map<String, Object> map);

    /*项目总条数查询*/
    public Integer queryCount();

    /*项目删除*/
    public Integer dropById(Integer pjId);
    
    /*项目修改(数据调出)*/
    public List<HcPj> updateQuery(Integer pjId);

    /*项目修改(数据传入)*/
    public void updateData(HcPj hcPj);

    /*项目审核（数据调出）*/
    public List<HcPj> reviewData(Map<String,Object> map);

    /*项目审核总条数查询*/
    public Integer reviewDataCount(HcPj hcPj);

    /*项目审核条件查询（数据调出）*/
    public List<HcPj> reviewDataLike(Map<String,Object> map);

    /*项目详情数据调出*/
    public List<HcPj> datareview(HcPj hcPj);

    /*审核通过传回*/
    public void datatrue(@Param("pjId")Integer pjId,@Param("pjStatus")Integer pjStatus,@Param("pjOnceReason")String pjOnceReason,@Param("pjLastReason")String pjLastReason);

    /*审核不通过传回*/
    public void datafalse(@Param("pjId")Integer pjId, @Param("pjStatus")Integer pjStatus, @Param("pjOnceReason")String pjOnceReason, @Param("pjLastReason")String pjLastReason);

}
