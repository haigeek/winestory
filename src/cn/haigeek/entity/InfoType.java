package cn.haigeek.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by haigeek on 2017/7/24.
 */
public class InfoType {
    private int typeId;
    private String typeName;
    private Set<Story> setStory=new HashSet<>();

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Set<Story> getSetStory() {
        return setStory;
    }

    public void setSetStory(Set<Story> setStory) {
        this.setStory = setStory;
    }
}
