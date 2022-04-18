package com.caipudaquandemo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.util.List;

@Data
public class smallTypeManagement {
    private Integer sid;  //编号
    private String sname;  //名称
    private String sremark;  //备注
    private  Integer bigTypeId;   //菜谱大类
    private  String simage;  //菜谱分类图片


    @TableField(select = false)
    private List<caiPuManagement> caiPuManagementList;  //菜谱集合

    @TableField(select = false)
    private List<smallTypeManagement> smallTypes; //菜谱类型集合


}
