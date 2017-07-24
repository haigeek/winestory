package cn.haigeek.dao;

import cn.haigeek.entity.InfoType;

import java.util.List;

/**
 * Created by haigeek on 2017/7/24.
 */
public interface InfoTypeDao {
    List<InfoType> findAll();
}
