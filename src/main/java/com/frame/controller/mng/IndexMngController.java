package com.frame.controller.mng;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.frame.base.entity.FrontMessage;
import com.frame.base.entity.OrderInfo;
import com.frame.base.entity.UserInfo;
import com.frame.javabean.PageBean;
import com.frame.pojo.OrderInfoQO;
import com.frame.service.IndexService;
import com.frame.service.OrderService;
import com.frame.service.UserService;
import com.frame.util.JsonUtil;
import com.frame.util.Md5Encrypt;
import com.function.message.mq.MQCacheQueue;

/**
 * 后台管理操作
 * 
 * @author Norman
 *
 */
@Controller("indexMngController")
@RequestMapping("/mng/index/")
public class IndexMngController {
	
	@Autowired
	private IndexService indexService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MQCacheQueue mqCacheQueue;
	
	 //订单处理操作
	@Autowired
	private OrderService orderService;

	 /**
     * 功能：登陆功能 
     * 
     * 参数：@return
     */
    @RequestMapping("login")  
    public ModelAndView login(){
    	
    	 
    	return new ModelAndView("mngPage/login/login");
    	
    }
    
	/**
	 * 编辑人：Norman
	 *
	 * 功能：后台管理主界面
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("index")
	public ModelAndView index(PageBean pageBean) {

		// 
		
		ModelAndView modelAndView=new ModelAndView("mngPage/index/index");
		
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
	 * 功能：获取所有用户 测试方法
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("loginValidate")
	@ResponseBody
	public FrontMessage loginValidate(HttpServletRequest request,String userName,String password) {
		password=Md5Encrypt.md5(password.toLowerCase());
		FrontMessage message=new FrontMessage();
		
		
		UserInfo user=this.userService.loginValidate(userName, password);
		HttpSession session =request.getSession();
		if(StringUtils.isEmpty(session)){
			//session=new s
		}
		
		request.getSession().setAttribute("userInfo", user);
		if(user!=null){
			message.setCode("success");
			message.setMessage("登陆成功。");
			message.setUrl("mng/index/index");
		}else{
			message.setCode("error");
			message.setMessage("登陆失败。");
		}
		
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
	@RequestMapping("selUser")
	@ResponseBody
	public String selUser() {
		int userId = 1;
		UserInfo user=this.userService.getUserById(userId);
	    
		return  JsonUtil.passToJson(user);
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取所有用户 测试方法
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("main")
	public ModelAndView main() {
		
		ModelAndView modelAndView=new ModelAndView("mngPage/common/main");
		
		return  modelAndView;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取所有用户 测试方法
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("loginOut")
	@ResponseBody
	public ModelAndView loginOut(HttpServletRequest request) {
		
		ModelAndView modelAndView=new ModelAndView("mngPage/index/index");
		request.getSession().removeAttribute("userInfo");
		return  modelAndView;
	}
}
