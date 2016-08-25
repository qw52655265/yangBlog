package com.yang.service;

import com.yang.entity.PhotoBean;

/**
 * 
 * @描述 照片管理service
 * @author 杨小龙
 * @创建时间 2016年7月29日 下午3:06:06
 * @version
 */
public interface PhotoService {

	/**
	 * 获取照片列表
	 * @param startRecordNum
	 * @return
	 */
	String getPhotoList(int startRecordNum, int currentPage);
	
	/**
	 * 保存照片（新增）
	 * @param bean
	 * @return
	 */
	String addPhoto(PhotoBean bean);
	
	/**
	 * 保存照片（编辑）
	 * @param bean
	 * @return
	 */
	String editPhoto(PhotoBean bean);
	
	/**
	 * 根据id删除照片
	 * @param photoId
	 * @return
	 */
	String deletePhoto(String photoId);
	
	/**
	 * 根据id串批量删除照片
	 * @param photoIds
	 * @return
	 */
	String deletePhotoBatch(String photoIds);
	
	/**
	 * 获取相片列表
	 * @param parentId
	 * @return
	 */
	String getPhotoInfoList(String parentId);
}
