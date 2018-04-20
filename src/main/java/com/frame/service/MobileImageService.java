package com.frame.service;

import com.frame.base.entity.MobileImage;
import com.frame.base.entity.OrderInfo;
import com.frame.javabean.PageBean;
import com.frame.pojo.OrderInfoQO;

import java.util.List;

/**
 * @author Norman
 * <p>
 * 功能：框架测试类
 * 接口中必须加注释
 */
public interface MobileImageService {


    /**
     * 编辑人：Norman
     * <p>
     * 功能：静态资源
     * 时间：2016年1月17日
     *
     * @param pageBean
     * @return
     */
    public List<MobileImage> list(PageBean pageBean);


}
