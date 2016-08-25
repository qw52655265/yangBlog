package com.yang.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yang.entity.DictionaryBean;
import com.yang.entity.DictionaryDetailBean;
import com.yang.service.DictionaryService;
import com.yang.utils.JSONUtils;
import com.yang.utils.PageUtils;

/**
 * 
 * @描述 字典控制器
 * @author 杨小龙
 * @创建时间 2016年6月28日 上午9:53:02
 * @version
 */
@Controller
@RequestMapping("admin/dict")
public class AdminDictionaryController {
	
	@Autowired
	private DictionaryService dictionaryService;
	
	/**
	 *获取字典dictCode,dictName列表
	 * @return
	 */
	@RequestMapping("getDictionaryList")
	public String getDictionaryList(Model model, String pageNum){
		if(pageNum == null || "".equals(pageNum)){
			pageNum = "1";
		}
		
		JSONObject list ;
		try {
			String result = dictionaryService.getDictionaryList(PageUtils.getStartRecordNum(Integer.parseInt(pageNum)),Integer.parseInt(pageNum));
			JSONArray row = JSONArray.parseArray(result);
			if(row.size() > 0){
				list = JSONUtils.setReturnSuccessJSON(row);
			}else{
				list = JSONUtils.setReturnErrorJSON();
			}
		} catch (Exception e) {
			list = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("list",list);
		return "page/admin/Dictionary/DictionaryList";
	}
	
	/**
	 * 保存字典（新增）
	 * @param bean
	 * @return
	 */
	@ResponseBody
	@RequestMapping("saveDictionaryAdd")
	public JSONObject saveDictionaryAdd(DictionaryBean bean){
		
		JSONObject json;
		try {
			String result = dictionaryService.saveDictionaryAdd(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 保存字典（编辑）
	 * @param bean
	 * @return
	 */
	@ResponseBody
	@RequestMapping("saveDictionaryEdit")
	public JSONObject saveDictionaryEdit(DictionaryBean bean){
		
		JSONObject json;
		
		try {
			String result = dictionaryService.saveDictionaryEdit(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据id删除字典
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteDictionary")
	public JSONObject deleteDictionary(String id){
		
		JSONObject json;
		
		try {
			String result = dictionaryService.deleteDictionary(id);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据id串批量删除字典
	 * @param ids
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteDictionaryBatch")
	public JSONObject deleteDictionaryBatch(String ids){
		
		JSONObject json;
		
		try {
			String result = dictionaryService.deleteDictionaryBatch(ids);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	

	/**
	 * 根据字典代码查询字典，获取列表
	 * @return
	 */
	@RequestMapping("getDictionaryDetailList")
	public String getDictionaryDetailList(Model model, String dictCode){
		JSONObject list ;
		try {
			String result = dictionaryService.getDictionaryDetailList(dictCode);
			JSONArray row = JSONArray.parseArray(result);
			if(row.size() > 0){
				list = JSONUtils.setReturnSuccessJSON(row);
			}else{
				list = JSONUtils.setReturnErrorJSON();
			}
		} catch (Exception e) {
			list = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("list",list);
		model.addAttribute("dictCode", dictCode);
		return "page/admin/Dictionary/DictionaryDetailList";
	}
	
	/**
	 * 保存字典项（新增）
	 * @param bean
	 * @return
	 */
	@ResponseBody
	@RequestMapping("saveDetailAdd")
	public JSONObject saveDetailAdd(DictionaryDetailBean bean){
		
		JSONObject json;
		
		try {
			bean.setItemId(UUID.randomUUID().toString().toUpperCase());
			String result = dictionaryService.saveDetailAdd(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 保存字典项（编辑）
	 * @param bean
	 * @return
	 */
	@ResponseBody
	@RequestMapping("saveDetailEdit")
	public JSONObject saveDetailEdit(DictionaryDetailBean bean){
		
		JSONObject json;
		
		try {
			String result = dictionaryService.saveDetailEdit(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据itemId删除字典项
	 * @param itemId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteDetail")
	public JSONObject deleteDetail(String itemId){
		
		JSONObject json;
		
		try {
			String result = dictionaryService.deleteDetail(itemId);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据itemIds批量删除字典项
	 * @param itemIds
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteDetailBatch")
	public JSONObject deleteDetailBatch(String itemIds){
		
		JSONObject json;
		
		try {
			String result = dictionaryService.deleteDetailBatch(itemIds);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
}
