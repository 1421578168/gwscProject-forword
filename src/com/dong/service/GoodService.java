package com.dong.service;

import com.dong.entry.Good;
import com.dong.util.PageBean;

import java.util.List;

public interface GoodService {
    boolean addGood(Good good);
    void getPageBean(Good good, PageBean<Good> pb);
    boolean updateGood(Good good);
    boolean removeGood(Integer id);
}
