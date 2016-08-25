package com.yang.entity;

import java.util.List;

/**
 * 
 * @描述 分页实体类
 * @author 杨小龙
 * @创建时间 2016年5月30日 上午10:17:47
 * @version
 */
public class Page {

	private List<BlogBean> blogs;
	private int startRecordNum;// 起始记录数
	private int endRecordNum;// 结束记录数
	private int recordNum;// 总记录数

	public List<BlogBean> getBlogs() {
		return blogs;
	}

	public void setBlogs(List<BlogBean> blogs) {
		this.blogs = blogs;
	}

	public int getStartRecordNum() {
		return startRecordNum;
	}

	public void setStartRecordNum(int startRecordNum) {
		this.startRecordNum = startRecordNum;
	}

	public int getEndRecordNum() {
		return endRecordNum;
	}

	public void setEndRecordNum(int endRecordNum) {
		this.endRecordNum = endRecordNum;
	}

	public int getRecordNum() {
		return recordNum;
	}

	public void setRecordNum(int recordNum) {
		this.recordNum = recordNum;
	}

}
