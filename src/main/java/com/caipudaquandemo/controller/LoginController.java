package com.caipudaquandemo.controller;

import com.caipudaquandemo.mapper.UserManagerMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class LoginController {


     public final UserManagerMapper userManagerMapper;
//     public final UserManagerService userManagerService;

//    @RequestMapping("/login")
//    public String login(@RequestBody UserManager usermanager){
////        System.out.println("usermanager:"+usermanager);
//        String flag = "error";
//        UserManager us = UserManagerMapper.getUserManagerByMassage(usermanager.getUsername(),usermanager.getPassword());
//        System.out.println("usermanager:"+us);
//        HashMap<String, Object> res = new HashMap<>();
//        if (us!=null){
//            flag = "ok";
//        }
//        res.put("flag",flag);
//        res.put("usermanager",usermanager);
//        String res_json = JSON.toJSONString(res);
//        return res_json;
//    }
}
