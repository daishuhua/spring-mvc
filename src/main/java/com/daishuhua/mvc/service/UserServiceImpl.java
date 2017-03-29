package com.daishuhua.mvc.service;

import com.daishuhua.mvc.dao.UserDao;
import com.daishuhua.mvc.model.User;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by shuhuadai on 2017/3/7.
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public List<User> findAllUsers() {
        return userDao.findAllUsers();
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userDao.save(user);
    }

    @Override
    public void deleteByUserName(String userName) {
        userDao.deleteByUserName(userName);
    }

    @Override
    public void updateUser(User user) {
        User entity = userDao.findById(user.getId());
        if (entity != null) {
            BeanUtils.copyProperties(user, entity, "password");
            if (!StringUtils.isEmpty(user.getPassword())
                    && !passwordEncoder.matches(user.getPassword(), entity.getPassword())) {
                entity.setPassword(passwordEncoder.encode(user.getPassword()));
            }
        }
    }

    @Override
    public User findByUserName(String userName) {
        User entity = userDao.findByUserName(userName);
        return entity;
    }

    @Override
    public List<User> getSubordinateUser(String userName) {

        User loginUser = userDao.findByUserName(userName);
        if (loginUser.getSuperiorId() == 0) {
            return userDao.findAllUsers(userName);
        } else {
            return userDao.findUsersBySuperiorId(loginUser.getId());
        }
    }
}
