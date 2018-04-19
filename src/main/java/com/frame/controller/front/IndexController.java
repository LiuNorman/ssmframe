package com.frame.controller.front;

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
 * 功能：控制类测试
 * 
 * @author Norman
 */
@Controller("indexController")
@RequestMapping("/front/index/")
public class IndexController {
	 //订单处理操作
	@Autowired
	private OrderService orderService;
	
    final private IndexService indexService;
    
    @Autowired
    private UserService userService;

	@Autowired
	private MQCacheQueue mqCacheQueue;
    
    @Autowired
    public IndexController(IndexService indexService) {
    	
        this.indexService = indexService;
    }

    public void printMessage() {
    	System.out.println("say Hello ……");
        System.out.println(this.indexService.getMessage());
    }
    

    
    /**
     * 前台页面初始化
     * @return
     */
    @RequestMapping("index")  
    public ModelAndView index(PageBean pageBean){
    	String select = null;
		ModelAndView modelAndView=new ModelAndView("frontPage/index/index");
		
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
     * 关于我们
     * @return
     */
    @RequestMapping("about")  
    public ModelAndView about(){
    	
    	
    	return new ModelAndView("frontPage/about/about");
    	
    }
    
    /**
     * 我们的服务
     * @return
     */
    @RequestMapping("service")  
    public ModelAndView service(){
    	
    	
    	return new ModelAndView("frontPage/service/service");
    	
    }
    
    /**
     * 博客
     * @return
     */
    @RequestMapping("contact")  
    public ModelAndView contact(){
    	
    	
    	return new ModelAndView("frontPage/contact/contact");
    	
    }
    /**
     * 联系我们
     * @return
     */
    @RequestMapping("blog")  
    public ModelAndView blog(){
    	
    	ModelAndView modelView=new ModelAndView("frontPage/blog/blog");
    	
    	return modelView;
    	
    }
    

}
