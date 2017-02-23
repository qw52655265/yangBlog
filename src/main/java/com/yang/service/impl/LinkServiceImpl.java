package com.yang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.yang.dao.LinkDao;
import com.yang.entity.LinkBean;
import com.yang.service.LinkService;
import com.yang.utils.JSONUtils;

/**
 * 
 * @描述 友情链接接口实现类
 * @author 杨小龙
 * @创建时间 2016年7月29日 上午9:50:37
 * @version
 */
@Service("linkService")
public class LinkServiceImpl implements LinkService {
	
	@Autowired
	private LinkDao linkDao;

	 
	public String getLinkList(int startRecordNum, int currentPage) {
		
		List<LinkBean> beans = linkDao.getLinkList(startRecordNum);
		if(beans.size() > 0){
			beans.get(0).setCurrentPage(currentPage);//设置当前页
			int recordCount = beans.get(0).getRecordCount();
			int pageCount = (int) Math.ceil(((double)recordCount)/5);
			beans.get(0).setPageCount(pageCount);
		}
		String json = JSON.toJSONString(beans);
		
		return json;
	}

	 
	public String addLink(LinkBean bean) {

		int flag = linkDao.addLink(bean);
		String json = JSONUtils.createJson(flag, bean.getLinkId());
		
		return json;
	}

	 
	public String editLink(LinkBean bean) {
		
		int flag = linkDao.editLink(bean);
		String json = JSONUtils.createJson(flag, bean.getLinkId());
		
		return json;
	}

	 
	public String deleteLink(String linkId) {
		
		int flag = linkDao.deleteLink(linkId);
		String json = JSONUtils.createJson(flag, "");
		
		return json;
	}

	 
	public String deleteLinkBatch(String linkIds) {
		
		int flag = linkDao.deleteLinkBatch(linkIds);
		String json = JSONUtils.createJson(flag, "");
		
		return json;
	}

}
