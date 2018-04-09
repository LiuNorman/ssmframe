package com.frame.base.entity;

import java.util.Date;

/**
 * 角色信息
 * @author NormanZone
 *
 */
public class RoleInfo {
	/*
	 * `id` int(11) NOT NULL AUTO_INCREMENT,
	  `userTypeName` varchar(255) NOT NULL,
	  `address` varchar(255) DEFAULT NULL COMMENT '地址',
	  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
	  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
	  `userTypeStatus` varcha
	  */
	private int id;
	private String roleName;
	private String address;
	private Date createTime;
	private Date updateTime;
	private String roleStatus;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getRoleStatus() {
		return roleStatus;
	}
	public void setRoleStatus(String roleStatus) {
		this.roleStatus = roleStatus;
	}
	
}
