package com.caipudaquandemo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.util.List;

//用户实体类


@Data
public class UserManager {


	private Integer uid; //用户id
	private String username; //用户名
	private String password; //用户密码
	private Integer per;  //用户角色类型
	private Integer usernumber;
	private String quanxian;
	@TableField(select = false)
	private List<UserManager> UserManagerList;  //菜谱集合
	public UserManager() {
	}


}
