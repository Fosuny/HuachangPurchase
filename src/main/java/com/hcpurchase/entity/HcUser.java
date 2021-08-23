package com.hcpurchase.entity;

import java.util.Date;

public class HcUser {

    private Integer userId;
    private String userName;
    private Integer userAge;
    private Integer userSex;
    private Date userCreateDate;
    private Date userBirthday;
    private String userAddress;
    private Integer userType;
    private Integer userEmployeeId;
    private String userUnum;
    private String userPassword;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getUserAge() {
        return userAge;
    }

    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }

    public Integer getUserSex() {
        return userSex;
    }

    public void setUserSex(Integer userSex) {
        this.userSex = userSex;
    }

    public Date getUserCreateDate() {
        return userCreateDate;
    }

    public void setUserCreateDate(Date userCreateDate) {
        this.userCreateDate = userCreateDate;
    }

    public Date getUserBirthday() {
        return userBirthday;
    }

    public void setUserBirthday(Date userBirthday) {
        this.userBirthday = userBirthday;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public Integer getUserEmployeeId() {
        return userEmployeeId;
    }

    public void setUserEmployeeId(Integer userEmployeeId) {
        this.userEmployeeId = userEmployeeId;
    }

    public String getUserUnum() {
        return userUnum;
    }

    public void setUserUnum(String userUnum) {
        this.userUnum = userUnum;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    @Override
    public String toString() {
        return "HcUser{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userAge=" + userAge +
                ", userSex=" + userSex +
                ", userCreateDate=" + userCreateDate +
                ", userBirthday=" + userBirthday +
                ", userAddress='" + userAddress + '\'' +
                ", userType=" + userType +
                ", userEmployeeId=" + userEmployeeId +
                ", userUnum='" + userUnum + '\'' +
                ", userPassword='" + userPassword + '\'' +
                '}';
    }
}
