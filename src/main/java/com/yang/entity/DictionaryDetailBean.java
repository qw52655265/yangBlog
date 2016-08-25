package com.yang.entity;

/**
 * 
 * @描述 字典详细bean
 * @author 杨小龙
 * @创建时间 2016年7月28日 下午1:50:48
 * @version
 */
public class DictionaryDetailBean {

	private String itemId;
	private String dictCode;
	private String dictName;
	private String itemCode;
	private String itemName;

	public String getDictName() {
		return dictName;
	}

	public void setDictName(String dictName) {
		this.dictName = dictName;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public String getDictCode() {
		return dictCode;
	}

	public void setDictCode(String dictCode) {
		this.dictCode = dictCode;
	}

	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

}
