package com.caipudaquandemo.service;


import com.caipudaquandemo.base.vo.JSONResult;
import com.caipudaquandemo.entity.UserManager;

import java.util.List;

public interface UserManagerService {


	List<UserManager> getAllUser();

	List<UserManager> selectUser(UserManager userManager);


	JSONResult insertUser(UserManager userManager);

	JSONResult deleteUser(Integer uid);
}
