package com.rental.geniecar.infra.interceptor;

import com.rental.geniecar.domain.member.MemberVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
@Component
public class LoginUrlCheckInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {

        MemberVo memberInfo = (MemberVo) request.getSession().getAttribute("memberInfo");
        boolean isLogin = memberInfo == null ? false : true;

        if (!isLogin) {
            // 로그인되어 있지 않으면 로그인 페이지로 이동
            response.sendRedirect("/login/login.do");
            return false;
        }

        String url = request.getRequestURI();
        log.debug("requestUrl : {}", url);

        String authType = memberInfo.getType();
        if (url.startsWith("/admin") && !"A".equals(authType)){
            response.sendRedirect("/error/auth.do");
            return false;
        } else if(url.startsWith("/business") && !"B".equals(authType)){
            response.sendRedirect("/error/auth.do");
            return false;
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        // 필요에 따라 후처리 작업을 수행할 수 있습니다.
        
    }

}
