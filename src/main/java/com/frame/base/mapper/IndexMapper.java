package com.frame.base.mapper;

import org.apache.ibatis.annotations.Param;

import com.frame.base.entity.UserInfo;

/**
 * 接口必须添加注释
 * 
 * @author Norman
 *
 */
public interface IndexMapper {

	/**
	 * 
	 * 编辑人：Norman
	 *
	 * 功能：测试，获取用户信息
	 * 时间：2015年12月22日
	 * @param userId
	 * @return
	 */
	public UserInfo getUserById(@Param("userId")int userId);
}
