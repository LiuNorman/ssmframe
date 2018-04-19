package com.frame.controller.mng;

import java.util.List;

import com.frame.util.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.frame.base.entity.UserInfo;
import com.frame.service.UserService;
import com.frame.util.Md5Encrypt;

/**
 * 后台管理操作
 * 
 * @author Norman
 */
@Controller("userMngController")
@RequestMapping("/mng/user/")
public class UserMngController {
	
	@Autowired
	private UserService userService;

	/**
	 * 编辑人：Norman
	 *
	 * 功能：后台管理主界面
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("index")
	public ModelAndView login() {

        List<UserInfo> users=this.userService.getUsers();
		ModelAndView modelAndView=new ModelAndView("mngPage/usermng/usermng");
		modelAndView.addObject("users", users);
		return  modelAndView;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取所有用户 测试方法
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("getUser")
	@ResponseBody
	public UserInfo getUsers(int userId) {
		//int userId=1;
		UserInfo userInfo=this.userService.getUserById(userId);
		return  userInfo;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取所有用户 测试方法
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("selUser")
	@ResponseBody
	public UserInfo getUser(int userId) {
		//int userId = 1;
		UserInfo user=this.userService.getUserById(userId);
	    
		return  user;
		//return "\"{\"id\":1,\"userName\":\"刘晓文\",\"password\":\"123456\",\"age\":26}\"";
	}

	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取所有用户 测试方法
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("userInfo")
	public ModelAndView userInfo(int userId) {
		//int userId = 1;
		ModelAndView modelAndView=new ModelAndView("mngPage/usermng/userInfo");
		UserInfo user=this.userService.getUserById(userId);
		modelAndView.addObject("user", user);
		return  modelAndView;
	}
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取所有用户 测试方法
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("main")
	public ModelAndView main() {
		
		ModelAndView modelAndView=new ModelAndView("mngPage/common/main");
		
		return  modelAndView;
	}
	
	/**
	 * 用户编辑
	 */
	@RequestMapping("editUser")
	public ModelAndView editUser(UserInfo user){
		user.setPassword(Md5Encrypt.md5(user.getPassword()).toLowerCase());
		int result=this.userService.editUser(user);
		ModelAndView modelAndView=new ModelAndView("mngPage/usermng/usermng");
		return  modelAndView;
	}
	
	/**
	 * 添加用户
	 */
	@RequestMapping("addUser")
	public ModelAndView addUser(UserInfo user){
	
		user.setPassword(Md5Encrypt.md5(user.getPassword()).toLowerCase());
		int result=this.userService.addUser(user);
		ModelAndView modelAndView=new ModelAndView("mngPage/usermng/usermng");
		return  modelAndView;
	}
	
	/**
	 * 验证用户唯一性
	 * 
	 */
	@RequestMapping("isOnlyUser")
	@ResponseBody
	public String isOnlyUser(String userName){
		int result=this.userService.isOnlyUser(userName);
		if(result>0){
			return "success";
		}else{
			return  "error";
		}
	}
	
	
	/**
	 * 删除编辑
	 */
	@RequestMapping("delUser")
	public ModelAndView delUser(int userId){
		int result=this.userService.delUser(userId);
		ModelAndView modelAndView=new ModelAndView("mngPage/usermng/usermng");
		return  modelAndView;
	}
	
}
