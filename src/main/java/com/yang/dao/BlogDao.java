package com.yang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yang.entity.BlogBean;

public interface BlogDao {
	
	/**
	 * 获取博文列表
	 * @return
	 */
	List<BlogBean> getBlogList(@Param("startRecordNum")int startRecordNum);
	
	/**
     * 获取博文详细内容
     * @param id
     * @return
     */
    BlogBean getBlogInfo(@Param("id") String id);
    
    /**
     * 插入一篇博客文章
     * @param blog
     * @return
     */
    int addBlog(BlogBean blog);
    
    /**
     * 更新一篇博客文章
     * @param blog
     * @return
     */
    int editBlog(BlogBean blog);
    
    /**
     * 删除一篇博客文章
     * @param id
     * @return
     */
    int deleteBlog(@Param("id") String id);
    
    /**
     * 批量删除博文
     * @param idString
     * @return
     */
    int deleteBlogBatch(@Param("idString") String idString);
    
    /**
     * 自动更新浏览次数
     * @param id
     * @return
     */
    int autoHitCount(@Param("id") String id);
    
    /**
     * 获取首页的文章列表
     * @return
     */
    List<BlogBean> getBlogList4Index(@Param("startRecordNum")int startRecordNum);
    
    /**
     * 获取条件查询排行榜
     * @param condition
     * @return
     */
    List<BlogBean> getBlogListByCondition(@Param("condition") String condition, @Param("num") int num);
    
    /**
     * 根据id，查询上一条记录
     * @param id
     * @return
     */
    BlogBean getPrevBlog(@Param("id") int id);
    
    /**
     * 根据id，查询下一条记录
     * @param id
     * @return
     */
    BlogBean getNextBlog(@Param("id") int id);
    
    /**
     * 获取博文列表（若有博文类型，则查询，否则查询所有记录）用于文章列表 
     * @return
     */
    List<BlogBean> getBlogListByBolgType(@Param("startRecordNum") int startRecordNum, @Param("typeid") String typeid);
 
}