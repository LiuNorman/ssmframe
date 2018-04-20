package com.frame.base.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.frame.base.entity.UserInfo;

/**
 * 接口必须添加注释
 * 
 * @author Norman
 *
 */
public interface UserMapper {

	/**
	 * 
	 * 编辑人：Norman
	 *
	 * 功能：测试，获取用户信息
	 * 时间：2015年12月22日
	 * @param id
	 * @return
	 */
	public UserInfo getUserById(@Param("id")int id);
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：登陆
	 * 时间：2016年2月22日19:15:41
	 * @param userName
	 * @param password
	 * @return
	 */
	public UserInfo loginValidate(@Param("userName")String userName ,@Param("password")String password); 
	
	/**
	 * 编辑人：Norman
	 *
	 * 功能：获取所有用户信息
	 * 时间：2015年12月23日
	 * @return
	 */
	public List<UserInfo> getUsers(); 
	
	/**
	 * 添加用户
	 * 
	 * 参数 userInfo 对象
	 */
	public int addUser(UserInfo user);
	
	/**
	 * 修改用户
	 * 
	 * @param user
	 * @return
	 */
	public int editUser(UserInfo user);
	
	/**
	 * 删除用户
	 * 
	 * @return
	 */
	public int delUser(int UserId);
	
	/**
	 *用户唯一
	 * 
	 * @return
	 */
	public int isOnlyUser(@Param("userName")String userName);
}
