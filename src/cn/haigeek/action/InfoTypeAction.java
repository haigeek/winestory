package cn.haigeek.action;

import cn.haigeek.entity.InfoType;
import cn.haigeek.service.InfoTypeService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by haigeek on 2017/7/24.
 */
public class InfoTypeAction extends ActionSupport {
    private InfoType infoType;
    private InfoTypeService infoTypeService;

    public InfoType getInfoType() {
        return infoType;
    }

    public void setInfoType(InfoType infoType) {
        this.infoType = infoType;
    }

    public InfoTypeService getInfoTypeService() {
        return infoTypeService;
    }

    public void setInfoTypeService(InfoTypeService infoTypeService) {
        this.infoTypeService = infoTypeService;
    }

}
