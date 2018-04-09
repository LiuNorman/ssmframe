package com.frame.controller.mng;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.base.entity.OrderInfo;


@Controller("baiDuMapController")
@RequestMapping("/mng/baiDuMap/")
public class BaiDuMapController {

	/**
	 * 编辑人：Norman
	 *
	 * 功能：百度地图初始化
	 * 
	 * 时间：2015年12月22日
	 * @return
	 */
	@RequestMapping("baiDuMap")
	public ModelAndView baiDuMap(String userName) {
		ModelAndView modelAndView=new ModelAndView("mngPage/baiDuMap/baiDuMap");
		return  modelAndView;
	}
	
}
