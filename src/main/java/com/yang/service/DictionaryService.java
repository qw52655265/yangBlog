package com.yang.service;

import com.yang.entity.DictionaryBean;
import com.yang.entity.DictionaryDetailBean;



/**
 * 
 * @描述 字典表service
 * @author 杨小龙
 * @创建时间 2016年6月24日 上午8:19:31
 * @version
 */
public interface DictionaryService {
	
	/**
	 * 获取字典dictCode+dictName列表
	 * @return
	 */
	String getDictionaryList(int startRecordNum, int currentPage);
	
	/**
	 * 保存字典（新增）
	 * @param bean
	 * @return
	 */
	String saveDictionaryAdd(DictionaryBean bean);
	
	/**
	 * 保存字典（编辑）
	 * @param bean
	 * @return
	 */
	String saveDictionaryEdit(DictionaryBean bean);
	
	/**
	 * 根据id删除字典
	 * @param id
	 * @return
	 */
	String deleteDictionary(String id);
	
	/**
	 * 根据id串批量删除字典
	 * @param ids
	 * @return
	 */
	String deleteDictionaryBatch(String ids);
	
	/**
	 * 根据字典代码查询字典，获取详细列表
	 * @param dictCode
	 * @return
	 */
	String getDictionaryDetailList(String dictCode);
	
	/**
	 * 保存字典项（新增）
	 * @param bean
	 * @return
	 */
	String saveDetailAdd(DictionaryDetailBean bean);
	
	/**
	 * 保存字典项（编辑）
	 * @param bean
	 * @return
	 */
	String saveDetailEdit(DictionaryDetailBean bean);
	
	/**
	 * 根据itemId删除字典项
	 * @param itemId
	 * @return
	 */
	String deleteDetail(String itemId);
	
	/**
	 * 根据itemIds批量删除字典项
	 * @param itemIds
	 * @return
	 */
	String deleteDetailBatch(String itemIds);
	
	

}
