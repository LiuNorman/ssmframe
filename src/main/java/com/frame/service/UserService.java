package com.frame.service;

import java.util.List;

import com.frame.base.entity.UserInfo;

/**
 * @author Norman
 * <p>
 * 功能：框架测试类
 * 接口中必须加注释
 */
public interface UserService {

    String getMessage();

    /**
     * 编辑人：Norman
     * <p>
     * 功能：获取用户信息
     * 时间：2015年12月23日
     *
     * @param userId
     * @return
     */
    public UserInfo getUserById(int userId);

    /**
     * 编辑人：Norman
     * <p>
     * 功能：登陆
     * 时间：2016年2月22日19:15:41
     *
     * @param userName
     * @param password
     * @return
     */
    public UserInfo loginValidate(String userName, String password);

    /**
     * 编辑人：Norman
     * <p>
     * 功能：获取所有用户信息
     * 时间：2015年12月23日
     *
     * @param userId
     * @return
     */
    public List<UserInfo> getUsers();

    /**
     * 添加用户
     * <p>
     * 参数 userInfo 对象
     */
    public int addUser(UserInfo user);

    /**
     * 修改用户
     *
     * @param Norman
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
     * 删除用户
     *
     * @return
     */
    public int isOnlyUser(String userName);
}
