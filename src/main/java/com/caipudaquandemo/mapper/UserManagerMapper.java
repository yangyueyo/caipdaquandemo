package com.caipudaquandemo.mapper;

import com.caipudaquandemo.entity.UserManager;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserManagerMapper {
    public static UserManager getUserManagerByMassage(@Param("username") String username, @Param("password") String password) {
        return null;
    }
}
