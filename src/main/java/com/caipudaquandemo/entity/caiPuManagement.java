package com.caipudaquandemo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.util.List;

//@tableName("caipu_info")
@Data
public class caiPuManagement {

   private Integer cid;
   private String caiPuName;
   private String caiPuType;
   private String caiPuText;
   private String caiPuImage;
   private String caiPuUpload;
   private Integer caiPuTypeId;
   private String description;
   private Integer shouCangNum;
   private String caiPuMain;
   private String caiPuFu;
   private boolean isCollect;


   @TableField(select = false)
   private List<caiPuManagement> caiPuManagementList;  //菜谱集合


}
