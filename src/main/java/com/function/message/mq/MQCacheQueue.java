package com.function.message.mq;

import java.util.HashMap;
import java.util.Map;

import com.frame.base.entity.OrderInfo;



/**
 * 平台与MQ通信缓存队列
 *
 * @author Norman
 * @version 2016年3月30日19:56:58
 */
public class MQCacheQueue {
	
	private Map<String, Object> orderInfo=new HashMap<String, Object>();

	
	
	/**
	 * 放入队列
	 * @return
	 */
	public void putMap(String orderId,OrderInfo order){
		this.orderInfo.put(orderId, order);
	}
	
	/**
	 * 移除队列
	 * @return
	 */
	public void removeMap(String orderId,OrderInfo order){
		this.orderInfo.remove(orderId);
	}
	
	
	public Map<String, Object> getOrderInfo() {
		return orderInfo;
	}

	public void setOrderInfo(Map<String, Object> orderInfo) {
		this.orderInfo = orderInfo;
	}
	
	
	

}