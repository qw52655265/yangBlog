package com.yang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yang.entity.DictionaryBean;
import com.yang.entity.DictionaryDetailBean;

/**
 * 
 * @描述 字典表dao
 * @author 杨小龙
 * @创建时间 2016年6月24日 上午8:12:27
 * @version
 */
public interface DictionaryDao {
	
	/**
	 * 获取字典dictCode+dictName列表
	 * @param dictCode
	 * @return
	 */
	List<DictionaryBean> getDictionaryList(@Param("startRecordNum") int startRecordNum);
	
	/**
	 * 保存字典（新增）
	 * @param bean
	 * @return
	 */
	int saveDictionaryAdd(DictionaryBean bean);
	
	/**
	 * 保存字典（编辑）
	 * @param bean
	 * @return
	 */
	int saveDictionaryEdit(DictionaryBean bean);
	
	/**
	 * 根据id删除字典
	 * @param id
	 * @return
	 */
	int deleteDictionary(@Param("id") String id);
	
	/**
	 * 根据id串批量删除字典
	 * @param ids
	 * @return
	 */
	int deleteDictionaryBatch(@Param("ids") String ids);
	
	
	/**
	 * 根据字典代码查询字典，获取列表
	 * @param dictCode
	 * @return
	 */
	List<DictionaryDetailBean> getDictionaryDetailList(@Param("dictCode") String dictCode);
	
	/**
	 * 保存字典项（新增）
	 * @param bean
	 * @return
	 */
	int saveDetailAdd(DictionaryDetailBean bean);
	
	/**
	 * 保存字典项（编辑）
	 * @param bean
	 * @return
	 */
	int saveDetailEdit(DictionaryDetailBean bean);
	
	/**
	 * 根据itemId删除字典项
	 * @param itemId
	 * @return
	 */
	int deleteDetail(@Param("itemId") String itemId);
	
	/**
	 * 根据itemIds批量删除字典项
	 * @param itemIds
	 * @return
	 */
	int deleteDetailBatch(@Param("itemIds") String itemIds);
	

}
