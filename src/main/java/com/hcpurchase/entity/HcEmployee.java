package com.hcpurchase.entity;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.Date;

public class HcEmployee {

    private Integer employeeId;
    private String employeeName;
    private Integer employeeSex;
    private String employeePhone;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date employeeCreateDate;
    private String employeeEmail;
    private String employeeQq;
    private String employeeWechat;
    private String employeeCall;
    private String employeeAddress;
    private String employeeJob;

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public Integer getEmployeeSex() {
        return employeeSex;
    }

    public void setEmployeeSex(Integer employeeSex) {
        this.employeeSex = employeeSex;
    }

    public String getEmployeePhone() {
        return employeePhone;
    }

    public void setEmployeePhone(String employeePhone) {
        this.employeePhone = employeePhone;
    }

    public Date getEmployeeCreateDate() {
        return employeeCreateDate;
    }

    public void setEmployeeCreateDate(Date employeeCreateDate) {
        this.employeeCreateDate = employeeCreateDate;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    public String getEmployeeQq() {
        return employeeQq;
    }

    public void setEmployeeQq(String employeeQq) {
        this.employeeQq = employeeQq;
    }

    public String getEmployeeWechat() {
        return employeeWechat;
    }

    public void setEmployeeWechat(String employeeWechat) {
        this.employeeWechat = employeeWechat;
    }

    public String getEmployeeCall() {
        return employeeCall;
    }

    public void setEmployeeCall(String employeeCall) {
        this.employeeCall = employeeCall;
    }

    public String getEmployeeAddress() {
        return employeeAddress;
    }

    public void setEmployeeAddress(String employeeAddress) {
        this.employeeAddress = employeeAddress;
    }

    public String getEmployeeJob() {
        return employeeJob;
    }

    public void setEmployeeJob(String employeeJob) {
        this.employeeJob = employeeJob;
    }

    @Override
    public String toString() {
        return "HcEmployee{" +
                "employeeId=" + employeeId +
                ", employeeName='" + employeeName + '\'' +
                ", employeeSex=" + employeeSex +
                ", employeePhone='" + employeePhone + '\'' +
                ", employeeCreateDate=" + employeeCreateDate +
                ", employeeEmail='" + employeeEmail + '\'' +
                ", employeeQq='" + employeeQq + '\'' +
                ", employeeWechat='" + employeeWechat + '\'' +
                ", employeeCall='" + employeeCall + '\'' +
                ", employeeAddress='" + employeeAddress + '\'' +
                ", employeeJob='" + employeeJob + '\'' +
                '}';
    }
}
