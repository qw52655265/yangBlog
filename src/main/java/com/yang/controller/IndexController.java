package com.yang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yang.service.BlogService;
import com.yang.service.DictionaryService;
import com.yang.service.LinkService;
import com.yang.service.PhotoService;
import com.yang.utils.JSONUtils;
import com.yang.utils.PageUtils;

/**
 * 
 * @描述 博客网站Controller
 * @author 杨小龙
 * @创建时间 2016年8月3日 下午2:30:13
 * @version
 */
@Controller
@RequestMapping
public class IndexController {
	
	@Autowired
	private BlogService blogService;
	@Autowired
	private LinkService linkService;
	@Autowired
	private DictionaryService dictionaryService;
	@Autowired
	private PhotoService photoService;
	
	/**
	 * 网站首页
	 * @return
	 */
	@RequestMapping("index")
	public String getIndex(Model model){
		String result;
		JSONObject blogList = null;
		try {
			//文章推荐
			result = blogService.getBlogList4Index(0, 1);
			JSONArray blogRow = JSONArray.parseArray(result);
			blogList = JSONUtils.setReturnSuccessJSON(blogRow);
		} catch (Exception e) {
			blogList = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		model.addAttribute("blogList", blogList);
		getRightLayoutInfo(model);
		
		return "page/front/index";
	}
	
	/**
	 * 获取博文列表
	 * @param model
	 * @param pageNum
	 * @param typeid
	 * @return
	 */
	@RequestMapping(value="getBlogList/{pageNum}/{typeid}", method=RequestMethod.GET)
	public String getBlogList(Model model, 
			@PathVariable("pageNum") String pageNum, 
			@PathVariable("typeid") String typeid){
		
		JSONObject blogList;
		try {
			if("all".equals(pageNum)){
				pageNum = "1";
			}
			if("all".equals(typeid)){
				typeid = null;
			}
			String result = blogService.getBlogListByBolgType(PageUtils.getStartRecordNum(Integer.parseInt(pageNum)),Integer.parseInt(pageNum), typeid);
			JSONArray row = JSONArray.parseArray(result);
			blogList = JSONUtils.setReturnSuccessJSON(row);
			
		} catch (NumberFormatException e) {
			blogList = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("blogList", blogList);
		if(typeid == null){
			model.addAttribute("typeid", "all");
		}else{
			model.addAttribute("typeid", typeid);
		}
		getRightLayoutInfo(model);
		
		return "page/front/blogList";
	}
	
	/**
	 * 博文详细
	 * @param model
	 * @param blogId
	 * @return
	 */
	@RequestMapping("getBlogInfo/{id}")
	public String getBlogInfo(Model model, @PathVariable("id") String id){
		
		String result;
		JSONObject info;
		JSONObject prev;
		JSONObject next;
		try {
			//更新【浏览次数】
			blogService.autoHitCount(id);
			//获取博文详细
			result = blogService.getBlogInfo(id);
			info = JSONObject.parseObject(result);
		} catch (Exception e) {
			info = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		try {
			//上一条记录
			result = blogService.getPrevBlog(Integer.parseInt(id));
			prev = JSONObject.parseObject(result);
			if(prev == null){
				prev = JSONUtils.setReturnErrorJSON();
			}
		} catch (Exception e) {
			prev = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		try {
			//下一条记录
			result = blogService.getNextBlog(Integer.parseInt(id));
			next = JSONObject.parseObject(result);
			if(next == null){
				next = JSONUtils.setReturnErrorJSON();
			}
		} catch (Exception e) {
			next = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("info", info);
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		getRightLayoutInfo(model);
		
		return "page/front/blogInfo";
	}
	
	/**
	 * @描述 获取右侧栏的排行榜等信息，通用
	 * @param model
	 * @author 杨小龙
	 * @创建时间 2017年2月22日 上午10:37:46
	 * @version
	 */
	private void getRightLayoutInfo(Model model){
		String result;
		JSONObject linkList;
		JSONObject tagList;
		
		//点击排行
		JSONObject hotCommentArticleList = getBlogListByCondition(" hitcount desc , createdate desc ", 10);
	
		//最新文章
		JSONObject recentArticleList = getBlogListByCondition(" createdate desc ", 5);
		
		try {
			//标签云集
			result = dictionaryService.getDictionaryDetailList("DM_BQYJ");
			JSONArray tagRow = JSONArray.parseArray(result);
			tagList = JSONUtils.setReturnSuccessJSON(tagRow);
		} catch (Exception e) {
			tagList = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		try {
			//友情链接
			result = linkService.getLinkList(0, 1);
			JSONArray linkRow = JSONArray.parseArray(result);
			linkList = JSONUtils.setReturnSuccessJSON(linkRow);
		} catch (Exception e) {
			linkList = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("hotCommentArticleList", hotCommentArticleList);
		model.addAttribute("recentArticleList", recentArticleList);
		model.addAttribute("tagList", tagList);
		model.addAttribute("linkList", linkList);
	}
	
	/**
	 * 获取条件查询排行榜
	 * @param model
	 */
	private JSONObject getBlogListByCondition(String condition, int num){
		
		JSONObject json;
		try {
			String result = blogService.getBlogListByCondition(condition, num);
			JSONArray row = JSONArray.parseArray(result);
			json = JSONUtils.setReturnSuccessJSON(row);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		return json;
	}
	
	@RequestMapping(value="getList/{pageNum}/{typeid}", method=RequestMethod.GET)
	public String getList(Model model, 
			@PathVariable("pageNum") String pageNum, 
			@PathVariable("typeid") String typeid){
		if(pageNum == null || "".equals(pageNum)){
			pageNum = "1";
		}
		return "page/list";
	}
	
	/**
	 * @描述 跳转到相册
	 * @return
	 * @author 杨小龙
	 * @创建时间 2017年2月22日 下午3:21:58
	 * @version
	 */
	@RequestMapping(value="getAlbum", method=RequestMethod.GET)
	public String getAlbum(Model model){
		JSONObject list;
		try {
			
			String result = photoService.getAlbum();
			JSONArray row = JSONArray.parseArray(result);
			list = JSONUtils.setReturnSuccessJSON(row);
			
		} catch (NumberFormatException e) {
			list = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "page/front/album";
	}
	
	/**
	 * 
	 * @描述 获取某一相册中的相片列表
	 * @param model
	 * @param parentId
	 * @return
	 * @author 杨小龙
	 * @创建时间 2017年2月22日 下午3:27:14
	 * @version
	 */
	@RequestMapping(value="getAlbumInfo/{parentId}", method=RequestMethod.GET)
	public String getAlbumInfo(Model model, @PathVariable("parentId") String parentId){
		
		JSONObject list;
		try {
			String result = photoService.getPhotoInfoList(parentId);
			JSONArray row = JSONArray.parseArray(result);
			list = JSONUtils.setReturnSuccessJSON(row);
			
		} catch (NumberFormatException e) {
			list = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		model.addAttribute("parentId", parentId);
		
		return "page/front/albumInfo";
	}

}
