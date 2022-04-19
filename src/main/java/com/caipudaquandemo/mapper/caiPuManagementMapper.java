package com.caipudaquandemo.mapper;

import com.caipudaquandemo.entity.caiPuManagement;
import com.caipudaquandemo.entity.smallTypeManagement;
import org.apache.ibatis.annotations.Param;

import java.util.List;


//菜谱mapper接口
public interface caiPuManagementMapper {

    List<caiPuManagement> getcaiPu(Integer smallTypeId);

    List<caiPuManagement> getcaiPuId(Integer caiPuTypeId);

    List<smallTypeManagement> getsmallTypeName();



    List<caiPuManagement> getcaiPuById(Integer typeId);

    caiPuManagement getDetailById(Integer id);

    List<caiPuManagement> getCaipuList();

    List<caiPuManagement> searchCaipu(@Param("caipuName") String caipuName);

    void deleteCaipu(@Param("cid") Integer cid);

    void insertCaipuList(caiPuManagement caiPuManagement);

    Integer getCaipuId(@Param("sname")String sname);

}
