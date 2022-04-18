package com.caipudaquandemo;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@MapperScan("com.caipudaquandemo.mapper")
@SpringBootApplication
public class CaipudaquandemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(CaipudaquandemoApplication.class, args);
    }

}
