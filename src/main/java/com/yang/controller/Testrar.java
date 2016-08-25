package com.yang.controller;

import java.io.File;
import java.io.FileOutputStream;

import com.github.junrar.Archive;
import com.github.junrar.rarfile.FileHeader;

public class Testrar {

	public static void main(String[] args) {
		try {
			unRarFile("D:\\HBuilderWorkSpace\\yangBlog\\images\\testExt.rar", "D:\\HBuilderWorkSpace\\yangBlog\\images\\aaaaaa");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * 根据原始rar路径，解压到指定文件夹下.
	 * 
	 * @param srcRarPath 原始rar路径
	 * @param dstDirectoryPath 解压到的文件夹
	 */
	public static void unRarFile(String srcRarPath, String dstDirectoryPath) throws Exception {
		File dstDiretory = new File(dstDirectoryPath);
		if (!dstDiretory.exists()) {// 目标目录不存在时，创建该文件夹
			dstDiretory.mkdirs();
		}
		Archive a = new Archive(new File(srcRarPath));
		if (a != null) {
			// a.getMainHeader().print(); // 打印文件信息.
			FileHeader fh = a.nextFileHeader();
			while (fh != null) {
				// 防止文件名中文乱码问题的处理
				String fileName = fh.getFileNameW().isEmpty() ? fh.getFileNameString() : fh.getFileNameW();
				if (fh.isDirectory()) { // 文件夹
					File fol = new File(dstDirectoryPath + File.separator + fileName);
					fol.mkdirs();
				} else { // 文件
					File out = new File(dstDirectoryPath + File.separator + fileName.trim());
					// try {
					if (!out.exists()) {
						if (!out.getParentFile().exists()) {// 相对路径可能多级，可能需要创建父目录.
							out.getParentFile().mkdirs();
						}
						out.createNewFile();
					}
					FileOutputStream os = new FileOutputStream(out);
					a.extractFile(fh, os);
					os.close();
					// } catch (Exception ex) {
					// }
				}
				fh = a.nextFileHeader();
			}
			a.close();
		}
	}

}
