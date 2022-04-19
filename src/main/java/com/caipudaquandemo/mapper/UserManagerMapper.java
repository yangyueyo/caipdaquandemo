package com.caipudaquandemo.mapper;

import com.caipudaquandemo.entity.UserManager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserManagerMapper {

	List<UserManager> getAllUser();


	List<UserManager> selectUser(UserManager userManager);

	void inserUser(UserManager userManager);

	void deleteUser(@Param("uid") Integer uid);

}
