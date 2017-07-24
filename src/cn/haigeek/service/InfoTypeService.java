package cn.haigeek.service;

import cn.haigeek.dao.InfoTypeDao;
import cn.haigeek.entity.InfoType;

import java.util.List;

/**
 * Created by haigeek on 2017/7/24.
 */
public class InfoTypeService {
    private InfoTypeDao infoTypeDao;

    public void setInfoTypeDao(InfoTypeDao infoTypeDao) {
        this.infoTypeDao = infoTypeDao;
    }
    public List<InfoType> findAll(){
        return infoTypeDao.findAll();
    }
}
