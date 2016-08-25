package com.yang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yang.entity.LinkBean;

/**
 * 
 * @描述 友情链接dao
 * @author 杨小龙
 * @创建时间 2016年7月29日 上午9:32:36
 * @version
 */
public interface LinkDao {
	
	/**
	 * 获取友情链接列表
	 * @return
	 */
	List<LinkBean> getLinkList(@Param("startRecordNum") int startRecordNum);
	
	/**
	 * 保存友情链接（新增）
	 * @param bean
	 * @return
	 */
	int addLink(LinkBean bean);
	
	/**
	 * 保存友情链接（编辑）
	 * @param bean
	 * @return
	 */
	int editLink(LinkBean bean);
	
	/**
	 * 根据id删除友情链接
	 * @param linkId
	 * @return
	 */
	int deleteLink(@Param("linkId") String linkId);
	
	/**
	 * 根据id串批量删除友情链接
	 * @param linkIds
	 * @return
	 */
	int deleteLinkBatch(@Param("linkIds") String linkIds);

}
