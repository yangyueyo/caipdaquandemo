package com.caipudaquandemo.service.serviceImpl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.caipudaquandemo.entity.smallTypeManagement;
import com.caipudaquandemo.mapper.smallTypeManagementMapper;
import com.caipudaquandemo.service.smallTypeManagementService;
import org.springframework.beans.factory.annotation.Autowired;

//菜谱小类Service实现类
public class smallTypeManagementServiceImpl extends ServiceImpl<smallTypeManagementMapper, smallTypeManagement> implements smallTypeManagementService {

    @Autowired
    private smallTypeManagementMapper smallTypeManagementMapper;
}
