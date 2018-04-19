package com.frame.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frame.base.entity.OrderInfo;
import com.frame.base.mapper.OrderMapper;
import com.frame.javabean.PageBean;
import com.frame.pojo.OrderInfoQO;
import com.frame.service.OrderService;

/**
 * 功能： 订单管理类
 *
 * @author Norman
 * <p>
 * 时间：2016年2月2日
 */
@Service("orderServiceImpl")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    public String getMessage() {
        // TODO Auto-generated method stub
        return null;
    }

    // 发单
    public int sendOrderLogistics(OrderInfo order) {
        // TODO Auto-generated method stub
        int result = this.orderMapper.sendOrderLogistics(order);
        return result;
    }

    // 发单，写入详情表，并且写入中间流程表
    public int sendOrder(OrderInfo order) {
        // TODO Auto-generated method stub
        int result = this.orderMapper.sendOrderLogistics(order);
        //int result=this.orderMapper.sendOrderInfo(order);
        //order.setId((Integer) null);
        order.setOrderId(order.getId());
        int result02 = this.orderMapper.sendOrderDetail(order);
        if (result > 0 && result02 > 0) {

            return result;
        } else {
            return 0;
        }
    }

    // 发单
    public int sendOrderDetail(OrderInfo order) {
        // TODO Auto-generated method stub
        int result = this.orderMapper.sendOrderDetail(order);
        return result;
    }

    /**
     * 根据id获取订单数据
     */
    public OrderInfo getOrderById(int orderId) {
        // TODO Auto-generated method stub

        OrderInfo orders = this.orderMapper.getOrderById(orderId);

        return orders;
    }

    // 获取 订单数据集合
    public List<OrderInfoQO> getOrders(PageBean pageBean) {

        // TODO Auto-generated method stub
        // 默认取第一页


        List<OrderInfoQO> orders = this.orderMapper.getOrders(pageBean);

        return orders;
    }

    // 获取 订单总页数
    public int allPages(PageBean pageBean) {

        // TODO Auto-generated method stub
        // 默认取第一页


        int allPages = this.orderMapper.allPages(pageBean);

        return allPages;
    }

    // 获取 订单数据集合
    public List<OrderInfo> getOrdersById(int id, int start, int page) {

        // TODO Auto-generated method stub

        int end = start + page * 10;
        // 默认取第一页
        if (start <= 0) {
            start = 1;
        }
        if (end <= 0) {
            end = 10;
        }

        List<OrderInfo> orders = this.orderMapper.getOrdersById(id, start, end);

        return orders;
    }

    /**
     * 接单
     * <p>
     * 参数：order
     */
    public int reciveOrder(OrderInfo order) {

        // TODO Auto-generated method stub

        int result = this.orderMapper.reciveOrder(order);
        //order.setId((Integer) null);
        order.setOrderId(order.getId());
        int result01 = this.orderMapper.sendOrderDetail(order);

        return result;
    }

    public List<OrderInfoQO> needReciveOrder(int statue, int start, int count) {
        // TODO Auto-generated method stub

        List<OrderInfoQO> list = this.orderMapper.needReciveOrder(statue, start, count);
        return list;
    }

}
