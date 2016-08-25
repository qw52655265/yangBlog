package com.yang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yang.entity.PhotoBean;

/**
 * 
 * @描述 照片管理dao
 * @author 杨小龙
 * @创建时间 2016年7月29日 下午2:51:17
 * @version
 */
public interface PhotoDao {
	
	/**
	 * 获取照片列表
	 * @param startRecordNum
	 * @return
	 */
	List<PhotoBean> getPhotoList(@Param("startRecordNum") int startRecordNum);
	
	/**
	 * 保存照片（新增）
	 * @param bean
	 * @return
	 */
	int addPhoto(PhotoBean bean);
	
	/**
	 * 保存照片（编辑）
	 * @param bean
	 * @return
	 */
	int editPhoto(PhotoBean bean);
	
	/**
	 * 根据id删除照片
	 * @param photoId
	 * @return
	 */
	int deletePhoto(@Param("photoId") String photoId);
	
	/**
	 * 根据id串批量删除照片
	 * @param photoIds
	 * @return
	 */
	int deletePhotoBatch(@Param("photoIds") String photoIds);
	
	/**
	 * 获取相片列表
	 * @param parentId
	 * @return
	 */
	List<PhotoBean> getPhotoInfoList(@Param("parentId") String parentId);

}
