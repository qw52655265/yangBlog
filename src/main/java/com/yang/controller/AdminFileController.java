package com.yang.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.yang.entity.MusicBean;
import com.yang.entity.PhotoBean;
import com.yang.entity.Plupload;
import com.yang.service.MusicService;
import com.yang.service.PhotoService;
import com.yang.utils.JSONUtils;
import com.yang.utils.PluploadUtils;

/**
 * 
 * @描述 上传文件控制器
 * @author 杨小龙
 * @创建时间 2016年7月27日 上午9:12:38
 * @version
 */
@Controller
@RequestMapping("admin/file")
public class AdminFileController {
	
	@Autowired
	private MusicService musicService;
	@Autowired
	private PhotoService photoService;

	/**
	 * 单文件上传
	 * @param plupload
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("uploadFile")
	public JSONObject uploadFile(Plupload plupload, HttpServletRequest request, HttpServletResponse response) throws IOException {

		String json = null;
		plupload.setRequest(request);
		// 文件存储路径
		String datePath = getDatePath();
		String realPath = plupload.getRequest().getSession().getServletContext().getRealPath("/upload/file");
		File dir = new File(realPath + datePath);
//		System.out.println(dir.getPath());

		try {
			// 上传文件
			String filename = PluploadUtils.upload(plupload, dir);
			// 判断文件是否上传成功（被分成块的文件是否全部上传完成）
			if (PluploadUtils.isUploadFinish(plupload)) {
				json = JSONUtils.createJson(1, "upload/file" + datePath + filename);
				response.getWriter().write(json);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
	
	/**
	 * 上传音乐文件，多文件上传
	 * @param plupload
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("uploadMusic")
	public JSONObject uploadMusic(Plupload plupload, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String json = null;
		plupload.setRequest(request);
		// 文件存储路径
		String datePath = getDatePath();
		String realPath = plupload.getRequest().getSession().getServletContext().getRealPath("/upload/music");
		File dir = new File(realPath + datePath);
		
		try {
			// 上传文件
			String filename = PluploadUtils.upload(plupload, dir);
			// 判断文件是否上传成功（被分成块的文件是否全部上传完成）
			if (PluploadUtils.isUploadFinish(plupload)) {
//				json = JSONUtils.createJson(1, "upload" + datePath + filename);
//				response.getWriter().write(json);
				//保存，文件信息
				MusicBean bean = new MusicBean();
				bean.setMusicId(UUID.randomUUID().toString().toUpperCase());
				bean.setName(plupload.getName());
				bean.setSource("upload/music" + datePath + filename);
				bean.setSize(PluploadUtils.getFileSize()+"");
				json = musicService.addMusic(bean);
				response.getWriter().write(json);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	/**
	 * 上传照片，多文件上传
	 * @param plupload
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("uploadPhoto")
	public JSONObject uploadPhoto(Plupload plupload, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String json = null;
		plupload.setRequest(request);
		String parentId = request.getParameter("parentId");
		// 文件存储路径
		String datePath = getDatePath();
		String realPath = plupload.getRequest().getSession().getServletContext().getRealPath("/upload/photo");
		File dir = new File(realPath + datePath);
		
		try {
			// 上传文件
			String filename = PluploadUtils.upload(plupload, dir);
			// 判断文件是否上传成功（被分成块的文件是否全部上传完成）
			if (PluploadUtils.isUploadFinish(plupload)) {
				//保存照片信息
				PhotoBean bean = new PhotoBean();
				bean.setPhotoId(UUID.randomUUID().toString().toUpperCase());
				bean.setName(plupload.getName());
				bean.setUrl("upload/photo" + datePath + filename);
				bean.setParentId(parentId);
				json = photoService.addPhoto(bean);
				response.getWriter().write(json);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	/**
	 * 将日期格式化为上传文件存放目录
	 * 
	 * @return
	 */
	public static String getDatePath() {

		Date date = new Date();
		DateFormat df = new SimpleDateFormat("/YYYY/MM/dd/");
		String datePath = df.format(date);

		return datePath;
	}

}
