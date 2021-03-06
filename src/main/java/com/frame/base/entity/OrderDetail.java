package com.frame.base.entity;

import java.util.Date;

/**
 * @author NormanZone
 */
public class OrderDetail {
    /*id` int(11) NOT NULL AUTO_INCREMENT,
	 customerId` int(255) DEFAULT NULL COMMENT '客户ID',
	 courierId` int(255) NOT NULL COMMENT '快递员/司机',
	 phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
	 address` varchar(255) DEFAULT NULL COMMENT '地址',
	 createTime` datetime DEFAULT NULL COMMENT '创建时间',
	 updateTime` datetime DEFAULT NULL COMMENT '更新时间',
	 orderStatus` varchar(2) DEFAULT '1' COMMENT '订单状态',
	 serviceTime` datetime DEFAULT NULL COMMENT '送达时间',
	 requireTime` varchar(255) DEFAULT NULL COMMENT '要求时间间隔',
	 orderInfoId` int(255) DEFAULT NULL COMMENT '订单ID',*/

    private int id;
    private String orderName;
    private int customerId;
    private int courierId;
    private String phone;
    private String address;
    private Date createTime;
    private Date updateTime;
    private String orderStatus;
    private Date serviceTime;
    private String requireTime;
    private int orderId;
    private String orderDescription;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getCourierId() {
        return courierId;
    }

    public void setCourierId(int courierId) {
        this.courierId = courierId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Date getServiceTime() {
        return serviceTime;
    }

    public void setServiceTime(Date serviceTime) {
        this.serviceTime = serviceTime;
    }

    public String getRequireTime() {
        return requireTime;
    }

    public void setRequireTime(String requireTime) {
        this.requireTime = requireTime;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public String getOrderDescription() {
        return orderDescription;
    }

    public void setOrderDescription(String orderDescription) {
        this.orderDescription = orderDescription;
    }

}
