package com.dong.service.impl;

import com.dong.dao.UserDao;
import com.dong.entry.User;
import com.dong.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDao();
    @Override
    public boolean checkUser(User user) {
        return userDao.queryUser(user);
    }
}
