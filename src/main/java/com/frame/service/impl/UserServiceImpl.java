package com.frame.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frame.base.entity.UserInfo;
import com.frame.base.mapper.UserMapper;
import com.frame.service.UserService;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {


    @Autowired
    private UserMapper userMapper;

    public String getMessage() {
        // TODO Auto-generated method stub
        return null;
    }

    /**
     * 根据用户编号查询用户信息
     */
    public UserInfo getUserById(int userId) {
        // TODO Auto-generated method stub
        UserInfo user = this.userMapper.getUserById(userId);
        return user;
    }


    public int addUser(UserInfo user) {
        // TODO Auto-generated method stub
        int result = this.userMapper.addUser(user);
        return result;
    }

    public int editUser(UserInfo user) {
        // TODO Auto-generated method stub
        int result = this.userMapper.editUser(user);
        return result;
    }

    public int delUser(int UserId) {
        // TODO Auto-generated method stub
        int result = this.userMapper.delUser(UserId);
        return result;
    }

    public List<UserInfo> getUsers() {
        // TODO Auto-generated method stub
        List<UserInfo> users = this.userMapper.getUsers();
        return users;
    }

    public UserInfo loginValidate(String userName, String password) {
        // TODO Auto-generated method stub

        UserInfo user = this.userMapper.loginValidate(userName, password);
        return user;
    }

    /**
     * 用户是否存在
     *
     * @return
     */
    public int isOnlyUser(String userName) {
        int result = this.userMapper.isOnlyUser(userName);
        return result;
    }
}
