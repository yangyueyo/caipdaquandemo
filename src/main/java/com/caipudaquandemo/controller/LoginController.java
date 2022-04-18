package com.caipudaquandemo.controller;

import com.alibaba.fastjson.JSON;
import com.caipudaquandemo.entity.UserManager;
import com.caipudaquandemo.mapper.UserManagerMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RequiredArgsConstructor
@RestController
public class LoginController {


     public final UserManagerMapper userManagerMapper;
//     public final UserManagerService userManagerService;

    @RequestMapping("/login")
    public String login(@RequestBody UserManager usermanager){
//        System.out.println("usermanager:"+usermanager);
        String flag = "error";
        UserManager us = UserManagerMapper.getUserManagerByMassage(usermanager.getUsername(),usermanager.getPassword());
        System.out.println("usermanager:"+us);
        HashMap<String, Object> res = new HashMap<>();
        if (us!=null){
            flag = "ok";
        }
        res.put("flag",flag);
        res.put("usermanager",usermanager);
        String res_json = JSON.toJSONString(res);
        return res_json;
    }
}
