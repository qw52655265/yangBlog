package com.yang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.yang.dao.BlogDao;
import com.yang.entity.BlogBean;
import com.yang.service.BlogService;
import com.yang.utils.JSONUtils;
@Service("blogService")
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogDao blogDao;
	
	@Override
	public String getBlogList(int startRecordNum, int currentPage) {
		
		List<BlogBean> beans = blogDao.getBlogList(startRecordNum);
		if(beans.size() > 0){
			beans.get(0).setCurrentPage(currentPage);//设置当前页
			int recordCount = beans.get(0).getRecordCount();
			int pageCount = (int) Math.ceil(((double)recordCount)/5);
			beans.get(0).setPageCount(pageCount);
		}
		String json = JSON.toJSONString(beans);
		
		return json;
	}
	
	@Override
	public String getBlogInfo(String id) {
		
		BlogBean bean = blogDao.getBlogInfo(id);
		String json = JSON.toJSONString(bean);
		
		return json;
	}
	
	@Override
	public String addBlog(BlogBean bean) {
		
		int flag = blogDao.addBlog(bean);
		String json = JSONUtils.createJson(flag, null);
		
		return json;
	}

	@Override
	public String editBlog(BlogBean bean) {
		
		int flag = blogDao.editBlog(bean);
		String json = JSONUtils.createJson(flag, bean.getId()+"");
		
		return json;
	}

	@Override
	public String deleteBlog(String id) {
		
		int flag = blogDao.deleteBlog(id);
		String json = JSONUtils.createJson(flag, id+"");
		
		return json;
	}
	
	@Override
	public String deleteBlogBatch(String idString) {
		
		int flag = blogDao.deleteBlogBatch(idString);
		String json = JSONUtils.createJson(flag, null);
		
		return json;
	}

	@Override
	public String autoHitCount(String id) {
		
		int flag = blogDao.autoHitCount(id);
		String json = JSONUtils.createJson(flag, id+"");
		
		return json;
	}

	@Override
	public String getBlogList4Index(int startRecordNum, int currentPage) {
		
		List<BlogBean> beans = blogDao.getBlogList4Index(startRecordNum);
		if(beans.size() > 0){
			beans.get(0).setCurrentPage(currentPage);//设置当前页
			int recordCount = beans.get(0).getRecordCount();
			int pageCount = (int) Math.ceil(((double)recordCount)/5);
			beans.get(0).setPageCount(pageCount);
		}
		String json = JSON.toJSONString(beans);
		
		return json;
	}

	@Override
	public String getBlogListByCondition(String condition) {
		
		List<BlogBean> beans = blogDao.getBlogListByCondition(condition);
		String json = JSON.toJSONString(beans);
		
		return json;
	}

	@Override
	public String getPrevBlog(int id) {
		
		BlogBean bean = blogDao.getPrevBlog(id);
		String json = JSON.toJSONString(bean);
		
		return json;
	}

	@Override
	public String getNextBlog(int id) {
		
		BlogBean bean = blogDao.getNextBlog(id);
		String json = JSON.toJSONString(bean);
		
		return json;
	}

	@Override
	public String getBlogListByBolgType(int startRecordNum, int currentPage, String typeid) {
		
		List<BlogBean> beans = blogDao.getBlogListByBolgType(startRecordNum, typeid);
		if(beans.size() > 0){
			beans.get(0).setCurrentPage(currentPage);//设置当前页
			int recordCount = beans.get(0).getRecordCount();
			int pageCount = (int) Math.ceil(((double)recordCount)/10);
			beans.get(0).setPageCount(pageCount);
		}
		String json = JSON.toJSONString(beans);
		
		return json;
	}

	

}
