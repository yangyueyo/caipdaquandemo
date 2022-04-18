package com.caipudaquandemo.util;

import com.caipudaquandemo.base.po.dataTree;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class TreeUtil {

    public static <T extends dataTree<T>> List<T> getTreeList(String topId, List< T > entityList) {

        List<T> resultList = new ArrayList<>(); //存储顶层数据

        HashMap<Object, T> treeMap = new HashMap<>();

        T itemTree;
        for (int i = 0; i < entityList.size() && !entityList.isEmpty(); i++) {

            itemTree = entityList.get(i);
            treeMap.put(itemTree.getCid(), itemTree);
            if (topId.equals(itemTree.getCaiPuTypeid()) || itemTree.getCaiPuTypeid() == null) {

                resultList.add(itemTree);
            }
        }
        for (int i = 0; i < entityList.size() && !entityList.isEmpty(); i++) {

            itemTree = entityList.get(i);
            T data = treeMap.get(itemTree.getCaiPuTypeid());

            if (data != null) {
                if (data.getChildren() == null) {
                    data.setChildren(new ArrayList<>());
                }
                data.getChildren().add(itemTree);

                treeMap.put(itemTree.getChildren(), data);
            }
        }
        return resultList;

    }
}
