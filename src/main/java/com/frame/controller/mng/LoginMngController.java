package com.frame.controller.mng;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.frame.base.entity.FrontMessage;
import com.frame.base.entity.UserInfo;
import com.frame.service.UserService;
import com.frame.util.Md5Encrypt;


/**
 *
 *
 * 后台管理登陆操作
 * 
 * @author Norman
 *
 */
@Controller("loginMngController")
@RequestMapping("/mng/login/")
public class LoginMngController {
	
	@Autowired
	private UserService userService;
	
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
	@RequestMapping("login")
	public ModelAndView login(HttpServletRequest request,String userName,String password) {
		ModelAndView modelAndView=new ModelAndView("mngPage/index/index");
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
			modelAndView=new ModelAndView("mngPage/login/login");
		}
		
		return  modelAndView;
	}
}
