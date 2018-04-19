package com.frame.controller.mng;

import java.io.OutputStream;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.frame.base.entity.FrontMessage;
import com.frame.base.entity.OrderInfo;
import com.frame.base.entity.UserInfo;
import com.frame.controller.front.OrderController;
import com.frame.javabean.PageBean;
import com.frame.pojo.OrderInfoQO;
import com.frame.pojo.OrderQO;
import com.frame.service.OrderService;
import com.frame.util.ExportFile;
import com.frame.util.JsonUtil;
import com.function.message.mq.MQCacheQueue;
import com.function.message.mq.MQConsumer;
import com.function.message.mq.MQProducer;

/**
 * 后台管理操作
 * 
 * @author Norman
 *
 */
@Controller("orderMngController")
@RequestMapping("/mng/order/")
public class OrderMngController {
	
	    //订单处理操作
		@Autowired
		private OrderService orderService;
		
		//消息生产者
		@Autowired
		private MQProducer mqProducer;
		
		@Autowired
		private MQConsumer mqConsumer;
		
		@Autowired
		private MQCacheQueue mqCacheQueue;
		
		private SimpleDateFormat smf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		  private SimpleDateFormat smf01=new SimpleDateFormat("yyyy-MM-dd");
		/**
		 * 编辑人：Norman
		 *
		 * 功能：后台管理主界面
		 * 时间：2015年12月22日
		 * @return
		 */
		@RequestMapping("index")
		public ModelAndView index(PageBean pageBean) {

			String select = null;
			ModelAndView modelAndView=new ModelAndView("mngPage/ordermng/ordermng");
			
			if(pageBean==null){
				
				pageBean=new PageBean();
			}
			
			//设置起始位置
			if(pageBean.getStart()<=1){
				pageBean.setStart(1);
			}
			if(pageBean.getPageIndex()<=1){
				pageBean.setPageIndex(1);
				
			}
			
			//设置分页条数
			if(pageBean.getPageCount()<5){
				pageBean.setPageCount(5);
			}
			//pageBean.setStart((pageBean.getPageIndex()-1)*pageBean.getPageCount()+1);
			
			List<OrderInfoQO> orders=this.orderService.getOrders(pageBean);
			//FrontMessage message=new FrontMessage();
			String messages=JsonUtil.passToJson(new OrderInfo());
			
			//接收消息
			//mqConsumer.receive(messages);
			int messageCount=mqCacheQueue.getOrderInfo().size();
			//订单总数
			int allCount=this.orderService.allPages(pageBean);
			
			int pageNum;
			if (allCount>=0&&allCount%pageBean.getPageCount()>0) {
				//pageBean.setPageNum(pageNum);
				pageNum=allCount/pageBean.getPageCount()+1;
			}else if(allCount>=0&&allCount%pageBean.getPageCount()==0){
				pageNum=allCount/pageBean.getPageCount();
			}else{
				pageNum=1;
			}
			
			if(pageBean.getNowPage() <= 1){
				pageBean.setNowPage(1);
			}
			
			if(pageBean.getNowPage() >= pageNum){
				pageBean.setNowPage(pageNum);
			}
			
			modelAndView.addObject("orders", orders);
			modelAndView.addObject("messageCount", messageCount);
			modelAndView.addObject("pageNum", pageNum);
			modelAndView.addObject("allCount", allCount);
			modelAndView.addObject("pageCount", pageBean.getPageCount());
			modelAndView.addObject("nowPage", pageBean.getNowPage());
			
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
		public ModelAndView getOrder(String userName) {
			int orderId=0;
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
			
			//int orderId = 0;
			
			OrderInfo order=this.orderService.getOrderById(orderId);
		    
			return  order;
		}
		
		/**
		 * 编辑人：Norman
		 *
		 * 功能：获取订单信息
		 * 
		 * 时间：2015年12月22日
		 * @return
		 */
		@RequestMapping("selOrderById")
		//@ResponseBody
		public ModelAndView selOrderById(int id) {
			ModelAndView modelAndView=new ModelAndView("mngPage/ordermng/ordermng");
			//int orderId = 0;
			
			List<OrderInfo> orders=this.orderService.getOrdersById(id,0,10);
			modelAndView.addObject("orders", orders);
			return  modelAndView;
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
			
			if(pageBean.getPageIndex()<1){
				pageBean.setPageIndex(1);
			}
			
			int count=0;
			
			//如果pageCount<0-----默认5条
			if(pageBean.getPageCount()<5){
				pageBean.setPageCount(5);
			}
			//pageBean.setStart((pageBean.getPageIndex()-1)*pageBean.getPageCount()+1);
			
			List<OrderInfoQO> orders=this.orderService.getOrders(pageBean);
			
			return  orders;
		}
		
		/**
		 * 编辑人：Norman
		 *
		 * 功能：获取订单总页数
		 * 
		 * 时间：2015年12月22日
		 * @return
		 */
		@RequestMapping("allPages")
		@ResponseBody
		public int allPages(PageBean pageBean) {
			
			
			//pageBean.setStart((pageBean.getPageIndex()-1)*pageBean.getPageCount()+1);
			
			int allPages=this.orderService.allPages(pageBean);
			
			return  allPages;
		}
		
		/**
		 * 编辑人：Norman
		 *
		 * 功能：发送订单
		 * 
		 * 时间：2015年12月22日
		 * @return
		 */
		@RequestMapping("sendOrder")
		@ResponseBody
		public FrontMessage sendOrder(OrderQO order) {
		
			Logger log = Logger.getLogger(OrderController.class);  
			//order.setCreateTime(createTime);
			
			OrderInfo orderInfo=new OrderInfo();
			orderInfo.setOrderName(order.getOrderName());
			orderInfo.setCustomerId(order.getCustomerId());
			//'courierId':courierId,
			orderInfo.setPhone(order.getPhone());
			orderInfo.setAddress(order.getAddress());
			orderInfo.setOrderStatus(order.getOrderStatus());
			orderInfo.setCreateTime(new Timestamp(new Date().getTime()));
			//orderInfo.setUpdateTime(new Timestamp(new Date().getTime()));
			//orderInfo.setServiceTime(new Timestamp(new Date().getTime()));
			orderInfo.setRequireTime(order.getRequireTime());
			orderInfo.setOrderDescription(order.getOrderDescription());
			int result=this.orderService.sendOrder(orderInfo);
			FrontMessage message=new FrontMessage();
			
			// 订单发送成功,发送mq消息
			if(result>0){
				
				message.setCode("success");
				message.setMessage("发单成功。");
				// 生成mq消息
				String messages=JsonUtil.passToJson(order);
				
				mqProducer.sendMessage(messages);
			
				
			}else{
				
				message.setCode("error");
				message.setMessage("发单失败。");
			}
			
			log.info("OrderName"+order.getOrderName()+"order.getAddress()"+order.getAddress());
			
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
		public FrontMessage reciveOrder(HttpServletRequest request,OrderInfo order) {
			
			//if(order.getCourierId()<0 ){
				
			UserInfo userInfo=(UserInfo) request.getSession().getAttribute("userInfo");
			order.setCourierId(userInfo.getId());
				
			//}
			
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
		 * 查询待结单的数据
		 */
		@RequestMapping("needReciveOrder")
		public ModelAndView needReciveOrder(PageBean pageBean){
			
			List<OrderInfoQO> order=this.orderService.needReciveOrder(0, pageBean.getPageIndex(), pageBean.getPageCount());
			
			ModelAndView modelAndView=new ModelAndView("mngPage/ordermng/ordermng");
			modelAndView.addObject("orders", order);
			return  modelAndView;
		}
		
		
		
		/**
		   * 导出
		   */
		  @RequestMapping(value = "/exportExcel")    
		  public void exportExcel(HttpServletRequest request, HttpServletResponse response,PageBean pageBean) throws Exception {    
		      // 获取用户ID
		       UserInfo user=(UserInfo)request.getSession().getAttribute("user");
		       Long userID=(long) user.getId();
		     
		      ExportFile<OrderInfoQO> exportFreeMoney =new ExportFile<OrderInfoQO>();
		      
		      //PageBean pageBean = new PageBean();
		      Date date=new Date();
		      String endDate=smf.format(date);
		      String fileName="自由资金详情信息表"+smf01.format(date);
		      //pageBean.setEndDate(endDate);
		      date.setYear(date.getYear()-1);
		      String startDate=smf.format(date);
		      //pageBean.setStarDate(startDate);
		     
		      List<OrderInfoQO> freeMoneysGroup=this.orderService.getOrders(pageBean);
		      
		      
		      String[] excelHeader = { "序号", "时间", "凭证号","订单号","自由金类型","存入（元）","支出（元）","余额（元）"}; 
		      List<String> properties =  new ArrayList<String>();
		      properties.add("datetime");
		      properties.add("certificateNo");
		      properties.add("dtOrder");
		      properties.add("abstructFreemoneyType");
		      properties.add("deposit");
		      properties.add("expenditure");
		      properties.add("balance");
		      HSSFWorkbook wb = exportFreeMoney.exportExcel(excelHeader,properties,freeMoneysGroup);    
		      response.setContentType("application/vnd.ms-excel");    
		      response.setHeader("Content-disposition", "attachment;filename=" + new String(fileName.getBytes("gb2312"), "ISO-8859-1") + ".xls");    
		      OutputStream ouputStream = response.getOutputStream();    
		      wb.write(ouputStream);    
		      ouputStream.flush();    
		      ouputStream.close();    
		 }   
}
