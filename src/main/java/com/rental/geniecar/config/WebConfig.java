package com.rental.geniecar.config;

import com.rental.geniecar.infra.interceptor.LoginUrlCheckInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private LoginUrlCheckInterceptor loginUrlCheckInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 인터셉터를 등록합니다.
        registry.addInterceptor(loginUrlCheckInterceptor)
                .addPathPatterns("/admin/**", "/business/**", "/mypage/**", "/reservation/**") // 보호된 URL 패턴을 지정
                //.excludePathPatterns("/public/**") // 로그인 없이 접근 가능한 URL 패턴
                ;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler( "/images/**")
                .addResourceLocations("classpath:/static/images/");
        registry
                .addResourceHandler(  "/styles/**")
                .addResourceLocations("classpath:/static/styles/");
        registry
                .addResourceHandler(  "/js/**")
                .addResourceLocations("classpath:/static/js/");
        registry
                .addResourceHandler( "/smartEditor/**")
                .addResourceLocations("classpath:/static/smartEditor/");
    }

}
