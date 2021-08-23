package com.hcpurchase.entity;

public class HcRole {

    private Integer roleId;
    private String roleName;
    private Integer roleAuthority;

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Integer getRoleAuthority() {
        return roleAuthority;
    }

    public void setRoleAuthority(Integer roleAuthority) {
        this.roleAuthority = roleAuthority;
    }

    @Override
    public String toString() {
        return "HcRole{" +
                "roleId=" + roleId +
                ", roleName='" + roleName + '\'' +
                ", roleAuthority=" + roleAuthority +
                '}';
    }
}
