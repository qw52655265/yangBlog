package com.yang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.yang.dao.PhotoDao;
import com.yang.entity.PhotoBean;
import com.yang.service.PhotoService;
import com.yang.utils.JSONUtils;

/**
 * 
 * @描述 照片管理接口实现类
 * @author 杨小龙
 * @创建时间 2016年7月29日 下午3:07:29
 * @version
 */
@Service("photoService")
public class PhotoServiceImpl implements PhotoService {
	
	@Autowired
	private PhotoDao photoDao;

	 
	public String getPhotoList(int startRecordNum, int currentPage) {
		
		List<PhotoBean> beans = photoDao.getPhotoList(startRecordNum);
		if(beans.size() > 0){
			beans.get(0).setCurrentPage(currentPage);//设置当前页
			int recordCount = beans.get(0).getRecordCount();
			int pageCount = (int) Math.ceil(((double)recordCount)/5);
			beans.get(0).setPageCount(pageCount);
		}
		String json = JSON.toJSONString(beans);
		
		return json;
	}

	 
	public String addPhoto(PhotoBean bean) {
		
		int flag = photoDao.addPhoto(bean);
		if(flag >= 1){//保存相片成功，更新相册封面（默认使用相册第一张相片，判断已经放在存储过程中）
			photoDao.updateAlbum(bean.getParentId());
		}
		String json = JSONUtils.createJson(flag, bean.getPhotoId());
		
		return json;
	}

	 
	public String editPhoto(PhotoBean bean) {
		
		int flag = photoDao.editPhoto(bean);
		String json = JSONUtils.createJson(flag, bean.getPhotoId());
		
		return json;
	}

	 
	public String deletePhoto(String photoId) {
		
		int flag = photoDao.deletePhoto(photoId);
		String json = JSONUtils.createJson(flag, "");
		
		return json;
	}

	 
	public String deletePhotoBatch(String photoIds) {
		
		int flag = photoDao.deletePhotoBatch(photoIds);
		String json = JSONUtils.createJson(flag, "");
		
		return json;
	}

	 
	public String getPhotoInfoList(String parentId) {
		
		List<PhotoBean> beans = photoDao.getPhotoInfoList(parentId);
		String json = JSON.toJSONString(beans);
		
		return json;
	}
	
	public String getAlbum(){
		List<PhotoBean> beans = photoDao.getAlbum();
		String json = JSON.toJSONString(beans);
		
		return json;
	}

}
