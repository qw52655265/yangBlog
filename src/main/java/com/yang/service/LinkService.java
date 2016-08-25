package com.yang.service;

import com.yang.entity.LinkBean;

/**
 * 
 * @描述 友情链接service
 * @author 杨小龙
 * @创建时间 2016年7月29日 上午9:47:53
 * @version
 */
public interface LinkService {
	/**
	 * 获取友情链接列表
	 * @return
	 */
	String  getLinkList(int startRecordNum, int currentPage);
	
	/**
	 * 保存友情链接（新增）
	 * @param bean
	 * @return
	 */
	String addLink(LinkBean bean);
	
	/**
	 * 保存友情链接（编辑）
	 * @param bean
	 * @return
	 */
	String editLink(LinkBean bean);
	
	/**
	 * 根据id删除友情链接
	 * @param linkId
	 * @return
	 */
	String deleteLink(String linkId);
	
	/**
	 * 根据id串批量删除友情链接
	 * @param linkIds
	 * @return
	 */
	String deleteLinkBatch(String linkIds);
}
