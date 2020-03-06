package com.dong.service.impl;

import com.dong.dao.GoodDao;
import com.dong.entry.Good;
import com.dong.service.GoodService;
import com.dong.util.PageBean;

import java.util.List;

public class GoodServiceImpl implements GoodService {
    private GoodDao goodDao = new GoodDao();
    @Override
    public boolean addGood(Good good) {
        return goodDao.insertGood(good);
    }

    @Override
    public void getPageBean(Good good, PageBean<Good> pb) {
        List<Good> goodList = goodDao.query(good, pb);
        pb.setList(goodList);
        int count = (int) goodDao.queryCount(good);
        pb.setTotalCount(count);
    }

    @Override
    public boolean updateGood(Good good) {
        return goodDao.updateGood(good);
    }

    @Override
    public boolean removeGood(Integer id) {
        return goodDao.remove(id);
    }

}
