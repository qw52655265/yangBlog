package com.yang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yang.entity.BlogBean;
import com.yang.service.BlogService;
import com.yang.service.DictionaryService;
import com.yang.utils.JSONUtils;
import com.yang.utils.PageUtils;

@Controller
@RequestMapping("admin/blog")
public class AdminBlogController {
	
	@Autowired
	private BlogService blogService;
	@Autowired
	private DictionaryService dictionaryService;

	
	
	/**
	 * 博文列表
	 * 
	 * @param pageNum 页码
	 * @param model
	 * @return
	 */
	@RequestMapping("getBlogList")
	public String getBlogList(String pageNum, Model model){
		JSONObject list;
		try {
			if(pageNum == null || "".equals(pageNum)){
				pageNum = "1";
			}
			String result = blogService.getBlogList(PageUtils.getStartRecordNum(Integer.parseInt(pageNum)),Integer.parseInt(pageNum));
			JSONArray row = JSONArray.parseArray(result);
			list = JSONUtils.setReturnSuccessJSON(row);
			
		} catch (NumberFormatException e) {
			list = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "page/admin/blog/blogList";
	}
	
	/**
	 * 跳转到博文新增页面
	 * @return
	 */
	@RequestMapping("toAddBlog")
	public String toAddBlog(Model model){
//		JSONObject types;//博文类型
//		try {
//			String result = blogTypesService.getBlogTypesList();
//			JSONArray row = JSONArray.parseArray(result);
//			if(row.size() > 0){
//				types = JSONUtils.setReturnSuccessJSON(row);
//			}else{
//				types = JSONUtils.setReturnErrorJSON();
//			}
			
			//文章分类
			String typesResult = dictionaryService.getDictionaryDetailList("DM_WZFL");
			JSONArray types = JSONArray.parseArray(typesResult);
			if(types.size() > 0){
				model.addAttribute("types", types);
			}
			//标签云集
			String signTagResult = dictionaryService.getDictionaryDetailList("DM_BQYJ");
			JSONArray signTagRow = JSONArray.parseArray(signTagResult);
			if(signTagRow.size() > 0){
				model.addAttribute("signTag", signTagRow);
			}
			
//		} catch (Exception e) {
//			types = JSONUtils.setReturnErrorJSON();
//			e.printStackTrace();
//		}
//		model.addAttribute("types", types);
		
		return "page/admin/blog/blogAdd";
	}
	
	/**
	 * 博文新增保存
	 * @param bean
	 * @return
	 */
	@RequestMapping("addBlog")
	@ResponseBody
	public JSONObject addBlog(BlogBean bean){
		
		JSONObject json;
		try {
			String result = blogService.addBlog(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 跳转到博文编辑页面
	 * @param id
	 * @return
	 */
	@RequestMapping("toEditBlog")
	public String toEditBlog(String id, Model model){
		//博文详细
		String result = blogService.getBlogInfo(id);
		JSONObject info = JSONObject.parseObject(result);
		model.addAttribute("info", info);
		//文章分类
		String typesResult = dictionaryService.getDictionaryDetailList("DM_WZFL");
		JSONArray types = JSONArray.parseArray(typesResult);
		if(types.size() > 0){
			model.addAttribute("types", types);
		}
		//标签云集
		String signTagResult = dictionaryService.getDictionaryDetailList("DM_BQYJ");
		JSONArray signTag = JSONArray.parseArray(signTagResult);
		if(signTag.size() > 0){
			model.addAttribute("signTag", signTag);
		}
		
		return "page/admin/blog/blogEdit";
	}
	
	
	/**
	 * 博文编辑保存
	 * @param bean
	 * @return
	 */
	@RequestMapping("editBlog")
	@ResponseBody
	public JSONObject editBlog(BlogBean bean){
		
		JSONObject json;
		try {
			String result = blogService.editBlog(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 删除博文
	 * @param id
	 * @return
	 */
	@RequestMapping("deleteBlog")
	@ResponseBody
	public JSONObject deleteBlog(String id){
		
		JSONObject json;
		try {
			String result = blogService.deleteBlog(id);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 批量删除博文
	 * @param idString
	 * @return
	 */
	@RequestMapping("deleteBlogBatch")
	@ResponseBody
	public JSONObject deleteBlogBatch(String idString){
		
		JSONObject json;
		try {
			String result = blogService.deleteBlogBatch(idString);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	
}
