package com.daishuhua.mvc.dao;

import com.daishuhua.mvc.model.User;

import java.util.List;

/**
 * Created by shuhuadai on 2017/3/7.
 */
public interface UserDao {

    List<User> findAllUsers();

    List<User> findAllUsers(String...excludeUserName);

    void save(User user);

    void deleteByUserName(String userName);

    User findByUserName(String userName);

    User findById(Integer id);

    List<User> findUsersBySuperiorId(Integer superiorId);
}
