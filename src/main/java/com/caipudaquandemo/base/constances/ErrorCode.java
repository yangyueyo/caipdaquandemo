package com.caipudaquandemo.base.constances;

public enum ErrorCode {
    OK("1000","成功"),
    SYSTEM_ERROR("101","系统错误"),;


    private String code;
    private String massage;

    ErrorCode(String code, String massage) {
        this.code = code;
        this.massage = massage;
    }

    public String getCode() {
        return code;
    }


    public String getMassage() {
        return massage;
    }

}
