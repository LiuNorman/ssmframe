package com.frame.controller.front;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.frame.base.entity.FrontMessage;
import com.frame.base.entity.OrderInfo;
import com.frame.javabean.PageBean;
import com.frame.pojo.OrderInfoQO;
import com.frame.service.OrderService;

/**
 * 前台操作
 * 
 * @author Norman
 *
 */
@Controller("orderController")
@RequestMapping("/front/order/")
public class OrderController {
	
	//订单处理操作
	@Autowired
	private OrderService orderService;

	/**
	 * 编辑人：Norman
	 *
	 * 功能：后台管理主界面
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("index")
	public ModelAndView login(PageBean pageBean) {

		String select = null;
		int start = 0;
		int page = 0;
		ModelAndView modelAndView=new ModelAndView("frontPage/order/order");
		
		List<OrderInfoQO> orders=this.orderService.getOrders(pageBean);
		
		modelAndView.addObject("orders", orders);
		
		return  modelAndView;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取订单详情试方法
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("getOrder")
	public ModelAndView getOrder(Integer orderId) {
		OrderInfo order=this.orderService.getOrderById(orderId);
		ModelAndView modelAndView=new ModelAndView("mngPage/index/index");
		modelAndView.addObject("order", order);
		return  modelAndView;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取订单信息
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("selOrder")
	@ResponseBody
	public OrderInfo selOrder(int orderId) {
		
		OrderInfo order=this.orderService.getOrderById(orderId);
	    
		return  order;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取订单信息测
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("selOrderById")
	@ResponseBody
	public List<OrderInfo> selOrderById(int id) {
		
		//int orderId = 0;
		
		List<OrderInfo> orders=this.orderService.getOrdersById(id,0,10);
		
		return  orders;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取订单信息测试方法
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("selOrders")
	@ResponseBody
	public List<OrderInfoQO> selOrders(PageBean pageBean) {
		
		
		List<OrderInfoQO> orders=this.orderService.getOrders(pageBean);
		
		return  orders;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：发单
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("sendOrder")
	@ResponseBody
	public FrontMessage sendOrder(OrderInfo order) {
		Logger log = Logger.getLogger(OrderController.class);  
		int result=this.orderService.sendOrder(order);
		
		FrontMessage message=new FrontMessage();
		if(result>0){
			message.setCode("success");
			message.setMessage("发单成功。");
		}else{
			message.setCode("error");
			message.setMessage("发单失败。");
		}
		log.info("OrderName"+order.getOrderName());
		log.info("order.getOrderName()"+order.getAddress());
		log.info("发单："+order.getOrderName()+order.getAddress());
		return  message;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取所有用户 测试方法
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("reciveOrder")
	@ResponseBody
	public FrontMessage reciveOrder(OrderInfo order) {
		
		// 接单
		int result=this.orderService.reciveOrder(order);
		
		
		FrontMessage message=new FrontMessage();
		if(result>0){
			message.setCode("success");
			message.setMessage("接单成功。");
		}else{
			message.setCode("error");
			message.setMessage("接单失败。");
		}
		return  message;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：删除订单
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("deleteOrder")
	@ResponseBody
	public FrontMessage deleteOrder(OrderInfo order) {
		
		// 删除
		int result=this.orderService.reciveOrder(order);
		
		
		/*if(result>0){
			
			modelAndView=login();
		}*/
		FrontMessage message=new FrontMessage();
		if(result>0){
			message.setCode("success");
			message.setMessage("删除成功。");
		}else{
			message.setCode("error");
			message.setMessage("删除失败。");
		}
		return  message;
	}

	/**
	 * 编辑人：Norman
	 *
	 * 功能：后台管理主界面
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("orderList")
	@ResponseBody
	public List<OrderInfoQO> orderList(PageBean pageBean) {

		List<OrderInfoQO> orders=this.orderService.getOrders(pageBean);

		return orders;
	}
	/**
	 * 编辑人：Norman
	 *
	 * 功能：详情页
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("single")
	public ModelAndView single(Integer orderId) {

		OrderInfo order=this.orderService.getOrderById(orderId);
		ModelAndView modelAndView=new ModelAndView("frontPage/order/single");

		modelAndView.addObject("order", order);
		return  modelAndView;
	}
}
