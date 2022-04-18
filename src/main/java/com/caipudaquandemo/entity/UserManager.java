package com.caipudaquandemo.entity;

import lombok.Data;

//用户实体类

@Data
public class UserManager {

    private Integer userid; //用户id
    private String username; //用户名
    private String password; //用户密码
    private boolean per;  //用户角色类型

    public UserManager() {

    }

    public UserManager(String username, String password, boolean per) {
        this.username = username;
        this.password = password;
        this.per = per;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean getPer() {
        return per;
    }

    public void setPer(boolean per) {
        this.per = per;
    }

    @Override
    public String toString() {
        return "UserManager{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", per=" + per +
                '}';
    }
}
