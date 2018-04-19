package com.frame.pojo;

import com.frame.base.entity.OrderInfo;

/**
 * 订单查询对应实体
 *
 * @author NormanZone
 */
public class OrderInfoQO extends OrderInfo {

    private String customerName;
    private String courierName;

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerNam(String customerName) {
        this.customerName = customerName;
    }

    public String getCourierName() {
        return courierName;
    }

    public void setCourierName(String courierName) {
        this.courierName = courierName;
    }

}
