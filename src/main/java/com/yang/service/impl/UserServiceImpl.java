package com.yang.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yang.dao.UserDao;
import com.yang.entity.UserBean;
import com.yang.service.UserService;

/**
 * 
 * @描述 登录用户接口实现类
 * @author 杨小龙
 * @创建时间 2016年8月1日 上午11:27:11
 * @version
 */
@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public String getUser(String loginName, String passWord) {
		
		JSONObject json = new JSONObject();
		try {
			UserBean bean = userDao.getUser(loginName);
			if(bean.getPassWord().equals(passWord)){
				 bean.setPassWord("");
				 String result = JSON.toJSONString(bean);
				 json.put("result", "1");
				 json.put("msg", "登录成功！");
				 json.put("row", JSONObject.parseObject(result));
			}else{
				json.put("result", "0");
				json.put("msg", "用户名或密码错误！");
			}
		} catch (Exception e) {
			json.put("result", "0");
			json.put("mgs", "用户名不存在！");
			e.printStackTrace();
		}
		
		return json.toString();
	}

}
