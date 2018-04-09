package com.frame.base.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.frame.base.entity.OrderInfo;
import com.frame.javabean.PageBean;
import com.frame.pojo.OrderInfoQO;


/**
 * 接口必须添加注释
 * 
 * @author Norman
 *
 */
public interface OrderMapper {

	/**
	 * 
	 * 编辑人：Norman
	 *
	 * 功能：发单
	 * 时间：2015年12月22日
	 * @param order
	 * @return
	 */
	public int sendOrderInfo(OrderInfo order);
	
	/**
	 * 
	 * 编辑人：Norman
	 *
	 * 功能：发单
	 * 时间：2015年12月22日
	 * @param order
	 * @return
	 */
	public int sendOrderLogistics(OrderInfo order);
	
	/**
	 * 
	 * 编辑人：Norman
	 *
	 * 功能：发单
	 * 时间：2015年12月22日
	 * @param order
	 * @return
	 */
	public int sendOrderDetail(OrderInfo order);

	/**
	 * 编辑人：Norman
	 *
	 * 功能：接单
	 * 时间：2015年12月22日
	 * @param order
	 * @return
	 */
	public int reciveOrder(OrderInfo order);
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：接单
	 * 时间：2015年12月22日
	 * @param order
	 * @return
	 */
	public int reciveOrderDetail(OrderInfo order);
	
	/**
	 * 
	 * 编辑人：Norman
	 *
	 * 功能：测试，获取订单信息
	 * 时间：2015年12月22日
	 * @param id
	 * @return
	 */
	public OrderInfo getOrderById(@Param("id")int id);
	
	/**
	 * 
	 * 编辑人：Norman
	 *
	 * 功能：测试，获取订单信息
	 * 时间：2015年12月22日
	 * @param pageBean
	 * @return
	 */
	public List<OrderInfoQO> getOrders(@Param("pageBean")PageBean pageBean);
	
	/**
	 * 
	 * 编辑人：Norman
	 *
	 * 功能：测试，获取订单信息
	 * 时间：2015年12月22日
	 * @param id
	 * @return
	 */
	public List<OrderInfo> getOrdersById(@Param("id")int id,@Param("start")int start,@Param("end")int end);

	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取订单信息---待接单状态
	 * 时间：2016年1月17日
	 * @param statue
	 * @return
	 */
	public List<OrderInfoQO> needReciveOrder(@Param("statue")int statue,@Param("start")int start,@Param("count")int count);
	
	/**
	 * 查询总页数
	 * @return
	 */
	public int allPages(@Param("pageBean")PageBean pageBean) ;
}
