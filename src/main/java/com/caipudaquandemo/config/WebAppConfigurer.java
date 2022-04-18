package com.caipudaquandemo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


//web项目配置类

@Configuration
public class WebAppConfigurer implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/image/swiper/**").addResourceLocations("file:D:\\desk\\caipudaquandemohou\\pictures\\indexswiperpic\\");
        registry.addResourceHandler("/image/indexlist/**").addResourceLocations("file:D:\\desk\\caipudaquandemohou\\pictures\\indexlistpic\\");
        registry.addResourceHandler("/image/caipupic/**").addResourceLocations("file:D:\\desk\\caipudaquandemohou\\pictures\\caipupic\\");
        registry.addResourceHandler("/image/typepic/**").addResourceLocations("file:D:\\desk\\caipudaquandemohou\\pictures\\typepic\\");
    }
}
