package com.et.dubbodemo.user.service.impl;

import com.et.dubbodemo.base.entity.User;
import com.et.dubbodemo.base.service.impl.BaseServiceImpl;
import com.et.dubbodemo.user.service.mapper.UserMapper;
import com.et.dubbodemo.user.spi.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 必须有@Service("userService") 这个注解才能在其它地方如控制器用自动载入@Autowired
 */
@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public UserMapper getMapper() {
        return userMapper;
    }

}
