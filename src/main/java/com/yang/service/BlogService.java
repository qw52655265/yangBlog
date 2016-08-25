package com.yang.service;

import com.yang.entity.BlogBean;

public interface BlogService {
	
	/**
	 * 获取博文列表
	 * @param startRecordNum
	 * @param currentPage
	 * @return
	 */
	String getBlogList(int startRecordNum, int currentPage);
	
	/**
	 * 获取博文详细内容
	 * @param id
	 * @return
	 */
	String getBlogInfo(String id);
	
	/**
	 * 插入一篇博客文章
	 * @param blog
	 * @return
	 */
	String addBlog(BlogBean blog);
	
	/**
     * 更新一篇博客文章
     * @param blog
     * @return
     */
    String editBlog(BlogBean blog);
    
    /**
     * 删除一篇博客文章
     * @param id
     * @return
     */
   String deleteBlog(String id);
    
    /**
     * 批量删除博文
     * @param idString
     * @return
     */
    String deleteBlogBatch(String idString);
    
    /**
	 * 自动更新浏览次数
	 * @param id
	 * @return
	 */
	String autoHitCount(String id);
	
	/**
     * 获取首页的文章列表
     * @return
     */
    String getBlogList4Index(int startRecordNum, int currentPage);
    
    /**
     * 获取条件查询排行榜
     * @param condition
     * @return
     */
    String getBlogListByCondition(String condition);
    
    /**
     * 根据id，查询上一条记录
     * @param id
     * @return
     */
    String getPrevBlog(int id);
    
    /**
     * 根据id，查询下一条记录
     * @param id
     * @return
     */
    String getNextBlog(int id);
    
    /**
     * 获取博文列表（若有博文类型，则查询，否则查询所有记录）用于文章列表 
     * @return
     */
    String getBlogListByBolgType(int startRecordNum,int currentPage, String typeid);

}
