package com.yang.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.yang.service.UserService;

@Controller
@RequestMapping("login")
public class AdminLoginController {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 跳转到登录界面
	 * @return
	 */
	@RequestMapping("login")
	public String login(){
		
		return "page/admin/login";
	}
	
	/**
	 * 登录
	 * @param loginName
	 * @param passWord
	 * @return
	 */
	@ResponseBody
	@RequestMapping("dologin")
	public JSONObject dologin(HttpSession session, String loginName, String passWord){
		
		String result = userService.getUser(loginName, passWord);
		JSONObject json = JSONObject.parseObject(result);
		if("0".equals(json.getString("result"))){
			return json;
		}else{
			JSONObject user=json.getJSONObject("row");
			session.setAttribute("user", user);
			return json;
		}
	}
	
	/**
	 * 注销登录
	 * @return
	 */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		
		HttpSession session=request.getSession();
		session.invalidate();
		
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
		
		return "redirect:" + basePath + "/yangBlog/login/login.do";
	}

}
