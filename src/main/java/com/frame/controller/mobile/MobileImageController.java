package com.frame.controller.mobile;

import com.frame.base.entity.MobileImage;
import com.frame.javabean.PageBean;
import com.frame.service.MobileImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 手机端控制类
 *
 * @author Norman
 */
@Controller("mobileImageController")
@RequestMapping("/mobile/image/")
public class MobileImageController {

    @Autowired
    private MobileImageService mobileImageService;

    /**
     * 编辑人：Norman
     * <p>
     * 功能:控制类
     * 时间：2015年12月23日
     *
     * @return
     */
    @RequestMapping("list")
    @ResponseBody
    public List<MobileImage> list(PageBean pageBean) {


        List<MobileImage> list = mobileImageService.list(pageBean);
        return list;
    }
}
