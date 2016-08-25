package com.yang.service;


/**
 * 
 * @描述 登录用户service
 * @author 杨小龙
 * @创建时间 2016年8月1日 上午11:26:18
 * @version
 */
public interface UserService {
	
	/**
	 * 根据登录名获取用户
	 * @param loginName
	 * @return
	 */
	String getUser(String loginName, String passWord);

}
