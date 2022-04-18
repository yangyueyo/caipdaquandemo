package com.caipudaquandemo.base.po;

import java.util.List;

public interface dataTree<T> {
    public String getCid();

    public String getCaiPuTypeid();

    public void setChildren(List<T> children);

    public List<T> getChildren();

}
