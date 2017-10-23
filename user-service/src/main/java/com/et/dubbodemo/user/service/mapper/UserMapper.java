package com.et.dubbodemo.user.service.mapper;

import com.et.dubbodemo.base.entity.User;
import com.et.dubbodemo.base.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * Created by tony on 17/10/20.
 */
@Repository("userMapper")
public interface UserMapper extends BaseMapper<User> {
}
