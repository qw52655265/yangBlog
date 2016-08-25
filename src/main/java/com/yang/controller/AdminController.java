package com.yang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @描述 管理员控制器
 * @author 杨小龙
 * @创建时间 2016年6月23日 上午8:26:07
 * @version
 */
@Controller
@RequestMapping("admin")
public class AdminController {

	/**
	 * 首页
	 * 
	 * @return
	 */
	@RequestMapping("index")
	public String adminIndex(Model model) {

		return "page/admin/adminIndex";
	}

	/**
	 * 头部
	 * 
	 * @return
	 */
	@RequestMapping("header")
	public String header(Model model) {

		return "page/admin/header";
	}

	/**
	 * 左侧导航栏
	 * 
	 * @return
	 */
	@RequestMapping("left")
	public String left(Model model) {

		return "page/admin/left";
	}

	/**
	 * 右侧页面
	 * 
	 * @return
	 */
	@RequestMapping("right")
	public String right(Model model) {

		return "page/admin/right";
	}

	/**
	 * 底部页面
	 * 
	 * @return
	 */
	@RequestMapping("bottom")
	public String bottom(Model model) {

		return "page/admin/bottom";
	}

}
