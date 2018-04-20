package com.frame.service.impl;

import com.frame.base.entity.MobileImage;
import com.frame.base.entity.OrderInfo;
import com.frame.base.mapper.MobileImageMapper;
import com.frame.base.mapper.OrderMapper;
import com.frame.javabean.PageBean;
import com.frame.pojo.OrderInfoQO;
import com.frame.service.MobileImageService;
import com.frame.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 功能： 移动端图片资源管理
 *
 * @author Norman
 * <p>
 * 时间：2016年2月2日
 */
@Service("mobileImageServiceImpl")
public class MobileImageServiceImpl implements MobileImageService {


    @Autowired
    private MobileImageMapper mobileImageMapper;

    public List<MobileImage> list(PageBean pageBean) {

        List<MobileImage>  list = mobileImageMapper.list(pageBean);
        return list;
    }
}
