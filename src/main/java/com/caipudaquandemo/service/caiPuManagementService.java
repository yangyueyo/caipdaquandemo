package com.caipudaquandemo.service;

import com.caipudaquandemo.base.vo.JSONResult;
import com.caipudaquandemo.entity.caiPuManagement;
import com.caipudaquandemo.entity.smallTypeManagement;

import java.util.List;

public interface caiPuManagementService {

    List<caiPuManagement> getcaiPu(Integer smallTypeId);

    List<caiPuManagement> getcaiPuId(Integer caiPuTypeId);

    //查询分类小类
    List<smallTypeManagement> getsmallTypeName();


    List<caiPuManagement> getcaiPuById(Integer typeId);

    caiPuManagement getDetailById(Integer id);

    List<caiPuManagement> getCaipuList();

    List<caiPuManagement> searchCaipu(String caipuName);


    JSONResult deleteCaipu(Integer cid);

    JSONResult insertCaipuList (caiPuManagement caiPuManagement);

}
