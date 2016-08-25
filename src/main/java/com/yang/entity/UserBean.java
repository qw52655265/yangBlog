package com.yang.entity;

/**
 * 
 * @描述 登录用户bean
 * @author 杨小龙
 * @创建时间 2016年8月1日 上午10:50:55
 * @version
 */
public class UserBean {

	private int id;
	private String userName;
	private String loginName;
	private String passWord;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}
