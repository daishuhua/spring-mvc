package com.daishuhua.mvc.service;

import com.daishuhua.mvc.model.User;

import java.util.List;

/**
 * Created by shuhuadai on 2017/3/7.
 */
public interface UserService {

    List<User> findAllUsers();

    void saveUser(User user);

    void deleteByUserName(String userName);

    void updateUser(User user);

    User findByUserName(String userName);

    List<User> getSubordinateUser(String userName);

}
