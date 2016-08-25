package com.yang.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;

public class CheckLoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3) throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3) throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
		
		JSONObject user = (JSONObject) request.getSession().getAttribute("user");
		if(user == null){
			String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
			response.sendRedirect(basePath+"/yangBlog/login/login.do");
			return false;
		}else{
			return true;
		}
	}

}
