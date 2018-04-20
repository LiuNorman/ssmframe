package com.frame.base.mapper;

import com.frame.base.entity.MobileImage;
import com.frame.javabean.PageBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 接口必须添加注释
 * 
 * @author Norman
 *
 */
public interface MobileImageMapper {


	/**
	 *
	 * 编辑人：Norman
	 *
	 * 功能：测试，移动端静态资源
	 * 时间：2015年12月22日
	 * @param pageBean
	 * @return
	 */
	public List<MobileImage> list(@Param("pageBean") PageBean pageBean);


}
