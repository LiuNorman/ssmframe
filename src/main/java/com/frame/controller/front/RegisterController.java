package com.frame.controller.front;

import com.frame.base.entity.FrontMessage;
import com.frame.base.entity.UserInfo;
import com.frame.service.UserService;
import com.frame.util.Md5Encrypt;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 注册
 *
 * @author NormanZone
 */
@Controller("registerController")
@RequestMapping("/front/register/")
public class RegisterController {

    @Autowired
    private UserService userService;

    /**
     * 编辑人：Norman
     * <p>
     * 功能：后台管理主界面
     * 时间：2015年12月22日
     *
     * @return
     */
    @RequestMapping("register")
    public ModelAndView register() {

        ModelAndView modelAndView = new ModelAndView("frontPage/register/register");
        return modelAndView;
    }


    /**
     * 用户注册
     */
    @RequestMapping("userRegister")
    public ModelAndView userRegister(UserInfo user) {
        ModelAndView modelAndView = new ModelAndView("frontPage/index/index");

        if (user == null) {
            modelAndView.addObject("message", FrontMessage.resultFail("参数未传入，请确认！"));
            return modelAndView;
        }

        if (StringUtils.isBlank(user.getAccount())) {
            modelAndView.addObject("message", FrontMessage.resultFail("账号参数未传入，请确认！"));
            return modelAndView;
        }
        if (StringUtils.isBlank(user.getUserName())) {
            modelAndView.addObject("message", FrontMessage.resultFail("用户名参数未传入，请确认！"));
            return modelAndView;
        }
        if (StringUtils.isBlank(user.getCardID())) {
            modelAndView.addObject("message", FrontMessage.resultFail("身份证号参数未传入，请确认！"));
            return modelAndView;
        }
        if (StringUtils.isBlank(user.getPhone())) {
            modelAndView.addObject("message", FrontMessage.resultFail("电话参数未传入，请确认！"));
            return modelAndView;
        }
        if (StringUtils.isBlank(user.getPassword())) {
            modelAndView.addObject("message", FrontMessage.resultFail("密码参数未传入，请确认！"));
            return modelAndView;
        }

        user.setPassword(Md5Encrypt.md5(user.getPassword()).toLowerCase());
        int result = this.userService.addUser(user);
        modelAndView.addObject("result", result);
        modelAndView.addObject("message", FrontMessage.resultSuccess());
        return modelAndView;
    }
}
