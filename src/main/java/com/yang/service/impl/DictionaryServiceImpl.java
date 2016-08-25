package com.yang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.yang.dao.DictionaryDao;
import com.yang.entity.DictionaryBean;
import com.yang.entity.DictionaryDetailBean;
import com.yang.service.DictionaryService;
import com.yang.utils.JSONUtils;

/**
 * 
 * @描述 字典表接口实现类
 * @author 杨小龙
 * @创建时间 2016年6月24日 上午8:20:50
 * @version
 */
@Service("dictionaryService")
public class DictionaryServiceImpl implements DictionaryService {

	@Autowired
	private DictionaryDao dictionaryDao;

	@Override
	public String getDictionaryList(int startRecordNum, int currentPage) {
		
		List<DictionaryBean> beans = dictionaryDao.getDictionaryList(startRecordNum);
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
	public String saveDictionaryAdd(DictionaryBean bean) {

		int flag = dictionaryDao.saveDictionaryAdd(bean);
		String json = JSONUtils.createJson(flag, "");

		return json;
	}

	@Override
	public String saveDictionaryEdit(DictionaryBean bean) {

		int flag = dictionaryDao.saveDictionaryEdit(bean);
		String json = JSONUtils.createJson(flag, bean.getId() + "");

		return json;
	}

	@Override
	public String deleteDictionary(String id) {

		int flag = dictionaryDao.deleteDictionary(id);
		String json = JSONUtils.createJson(flag, id);

		return json;
	}

	@Override
	public String deleteDictionaryBatch(String ids) {

		int flag = dictionaryDao.deleteDictionaryBatch(ids);
		String json = JSONUtils.createJson(flag, "");

		return json;
	}

	@Override
	public String getDictionaryDetailList(String dictCode) {

		List<DictionaryDetailBean> beans = dictionaryDao.getDictionaryDetailList(dictCode);
		String json = JSON.toJSONString(beans);

		return json;
	}

	@Override
	public String saveDetailAdd(DictionaryDetailBean bean) {

		int flag = dictionaryDao.saveDetailAdd(bean);
		String json = JSONUtils.createJson(flag, "");

		return json;
	}

	@Override
	public String saveDetailEdit(DictionaryDetailBean bean) {

		int flag = dictionaryDao.saveDetailEdit(bean);
		String json = JSONUtils.createJson(flag, bean.getItemId());

		return json;
	}

	@Override
	public String deleteDetail(String itemId) {

		int flag = dictionaryDao.deleteDetail(itemId);
		String json = JSONUtils.createJson(flag, itemId);

		return json;
	}

	@Override
	public String deleteDetailBatch(String itemIds) {

		int flag = dictionaryDao.deleteDetailBatch(itemIds);
		String json = JSONUtils.createJson(flag, "");

		return json;
	}

}
