package com.caipudaquandemo.base.vo;

import lombok.Data;

@Data
public class JSONResult {
    private Boolean success=true;

    private String message="成功";

    //错误码，用来描述错误类型，200表示没有错误
    private String code="200";

    //返回的数据 可以用map ，Object
    private Object data;

    public static JSONResult success(){
        return new JSONResult();
    }

    /**
     * 把查询返回结果 放入data字段
     */
    public static JSONResult success(Object obj){
        JSONResult instance = JSONResult.success();
        instance.setData(obj);
        return instance;
    }
    /**
     * 失败返回
     */
    public static JSONResult error(String message ){
        JSONResult instance = JSONResult.success();
        instance.setSuccess(false);
        instance.setMessage(message);
        return instance;
    }

    public static JSONResult error(String message,String code){
        JSONResult instance = JSONResult.success();
        instance.setSuccess(false);
        instance.setMessage(message);
        instance.setCode(code);
        return instance;
    }

}
