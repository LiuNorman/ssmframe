package com.frame.service;

import java.util.List;

import com.frame.base.entity.OrderInfo;
import com.frame.javabean.PageBean;
import com.frame.pojo.OrderInfoQO;

/**
 * @author Norman
 * <p>
 * 功能：框架测试类
 * 接口中必须加注释
 */
public interface OrderService {

    String getMessage();

    /**
     * 编辑人：Norman
     * <p>
     * 功能：发单
     * 时间：2015年12月22日
     *
     * @param userId
     * @return
     */
    public int sendOrder(OrderInfo order);

    /**
     * 编辑人：Norman
     * <p>
     * 功能：发单
     * 时间：2015年12月22日
     *
     * @param userId
     * @return
     */
    public int sendOrderLogistics(OrderInfo order);

    /**
     * 编辑人：Norman
     * <p>
     * 功能：发单
     * 时间：2015年12月22日
     *
     * @param userId
     * @return
     */
    public int sendOrderDetail(OrderInfo order);

    /**
     * 编辑人：Norman
     * <p>
     * 功能：接单
     * 时间：2015年12月22日
     *
     * @param userId
     * @return
     */
    public int reciveOrder(OrderInfo order);

    /**
     * 编辑人：Norman
     * <p>
     * 功能：获取订单信息
     * 时间：2016年1月17日
     *
     * @param userId
     * @return
     */
    public OrderInfo getOrderById(int orderId);

    /**
     * 编辑人：Norman
     * <p>
     * 功能：获取订单信息
     * 时间：2016年1月17日
     *
     * @param userId
     * @return
     */
    public List<OrderInfoQO> getOrders(PageBean pageBean);

    /**
     * 编辑人：Norman
     * <p>
     * 功能：获取订单信息
     * 时间：2016年1月17日
     *
     * @param userId
     * @return
     */
    public List<OrderInfo> getOrdersById(int id, int start, int end);

    /**
     * 编辑人：Norman
     * <p>
     * 功能：获取订单信息---待接单状态
     * 时间：2016年1月17日
     *
     * @param userId
     * @return
     */
    public List<OrderInfoQO> needReciveOrder(int statue, int start, int count);

    /**
     * 查询总页数
     */
    public int allPages(PageBean pageBean);
}
