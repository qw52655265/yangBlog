package com.yang.dao;

import org.apache.ibatis.annotations.Param;

import com.yang.entity.UserBean;

/**
 * 
 * @描述 登录用户dao
 * @author 杨小龙
 * @创建时间 2016年8月1日 上午11:26:31
 * @version
 */
public interface UserDao {
	
	/**
	 * 根据登录名获取用户
	 * @param loginName
	 * @return
	 */
	UserBean getUser(@Param("loginName") String loginName);

}
