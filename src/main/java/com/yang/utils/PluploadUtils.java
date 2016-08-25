package com.yang.utils;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import org.springframework.util.MultiValueMap;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.yang.entity.Plupload;

/**
 * Plupload是一个上传插件。 上传原理为单个文件依次发送至服务器. 上传打文件时可以将其碎片化上传。但是一般情况下，不会这样做，
 * 所以这里更多的是处理普通文件的批量上传。 这里主要处理文件上传
 */
public class PluploadUtils {
	private static final int BUF_SIZE = 2 * 1024;
	private static float FILE_SIZE;

	/**
	 * 用于Plupload插件的文件上传,自动生成唯一的文件保存名
	 * 
	 * @param plupload  存放上传所需参数的bean
	 * @param dir  保存目标文件目录
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public static String upload(Plupload plupload, File dir) throws Exception{
		// 生成唯一的文件名
		String filename = "" + System.currentTimeMillis() + plupload.getName();
//		String filename = UUID.randomUUID().toString() + plupload.getName().substring(plupload.getName().indexOf("."));
		upload(plupload, dir, filename);
		
		return filename;
	}

	/**
	 * 用于Plupload插件的文件上传
	 * 
	 * @param plupload  存放上传所需参数的bean
	 * @param dir  保存目标文件目录
	 * @param filename  保存的文件名
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public static void upload(Plupload plupload, File dir, String filename) throws IllegalStateException, IOException {
		int chunks = plupload.getChunks(); // 获取总的碎片数
		int chunk = plupload.getChunk(); // 获取当前碎片(从0开始计数)

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) plupload.getRequest();
		MultiValueMap<String, MultipartFile> map = multipartRequest.getMultiFileMap();

		if (map != null) {
			if (!dir.exists()){
				dir.mkdirs(); // 如果目标文件夹不存在则创建新的文件夹
			}

			// 事实上迭代器中只存在一个值,所以只需要返回一个值即可
			Iterator<String> iter = map.keySet().iterator();
			while (iter.hasNext()) {
				String str = (String) iter.next();
				List<MultipartFile> fileList = map.get(str);
				for (MultipartFile multipartFile : fileList) {
					// 因为只存在一个值,所以最后返回的既是第一个也是最后一个值
					plupload.setMultipartFile(multipartFile);

					// 创建新目标文件
					File targetFile = new File(dir.getPath() + "/" + filename);

					// 当chunks>1则说明当前传的文件为一块碎片，需要合并
					if (chunks > 1) {
						// 需要创建临时文件名，最后再更改名称
						File tempFile = new File(dir.getPath() + "/" + multipartFile.getName());
						// 如果chunk==0,则代表第一块碎片,不需要合并
						saveUploadFile(multipartFile.getInputStream(), tempFile, chunk == 0 ? false : true);

						// 上传并合并完成，则将临时名称更改为指定名称
						if (chunks - chunk == 1) {
							tempFile.renameTo(targetFile);
							FILE_SIZE = ((float)targetFile.length())/1024/1024;
//							System.out.println("<<<<<<<<<<<"+FILE_SIZE);
						}

					} else {
						// 否则直接将文件内容拷贝至新文件
						multipartFile.transferTo(targetFile);
						FILE_SIZE = ((float)targetFile.length())/1024/1024;
//						System.out.println(">>>>>>>>>>"+FILE_SIZE);
					}
				}
			}
		}

	}

	/**
	 * 保存上传文件，兼合并功能
	 * 
	 * @param input
	 * @param targetFile
	 * @param append
	 * @throws IOException
	 */
	private static void saveUploadFile(InputStream input, File targetFile, boolean append) throws IOException {
		OutputStream out = null;
		try {
			if (targetFile.exists() && append) {
				out = new BufferedOutputStream(new FileOutputStream(targetFile, true), BUF_SIZE);
			} else {
				out = new BufferedOutputStream(new FileOutputStream(targetFile), BUF_SIZE);
			}

			byte[] buffer = new byte[BUF_SIZE];
			int len = 0;
			// 写入文件
			while ((len = input.read(buffer)) > 0) {
				out.write(buffer, 0, len);
			}
		} catch (IOException e) {
			throw e;
		} finally {
			// 关闭输入输出流
			if (null != input) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (null != out) {
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	/**
	 * 判断是否全部上传完成 碎片需合并后才返回真
	 * 
	 * @param plupload
	 * @return
	 */
	public static boolean isUploadFinish(Plupload plupload) {
		return (plupload.getChunks() - plupload.getChunk() == 1);
	}
	
	/**
	 * 获取上传文件的大小（M）
	 * @return
	 */
	public static float getFileSize(){
		BigDecimal  b = new BigDecimal(FILE_SIZE);  
		FILE_SIZE=b.setScale(1, BigDecimal.ROUND_HALF_UP).floatValue();
		return FILE_SIZE;
	}

}
