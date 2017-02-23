package com.yang.entity;

/**
 * 
 * @描述 博文bean
 * @author 杨小龙
 * @创建时间 2016年6月23日 上午10:25:44
 * @version
 */
public class BlogBean {

	private Integer id;
	private String title;
	private Integer typeid;
	private String typeName;
	private Integer sortorder;
	private String summary;
	private String signTag;
	private String signTagName;
	private String keyword;
	private Integer hitcount;
	private Integer commentcount;
	private String createdate;
	private String editdate;
	private String content;
	private String img;// 略缩图路径
	private String author;// 作者
	private int recordCount;// 总记录数
	private int pageCount;// 总页数
	private int currentPage;// 当前页数

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title == null ? null : title.trim();
	}

	public Integer getTypeid() {
		return typeid;
	}

	public void setTypeid(Integer typeid) {
		this.typeid = typeid;
	}

	public Integer getSortorder() {
		return sortorder;
	}

	public void setSortorder(Integer sortorder) {
		this.sortorder = sortorder;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary == null ? null : summary.trim();
	}

	public String getSignTag() {
		return signTag;
	}

	public void setSignTag(String signTag) {
		this.signTag = signTag;
	}

	public String getSignTagName() {
		return signTagName;
	}

	public void setSignTagName(String signTagName) {
		this.signTagName = signTagName;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword == null ? null : keyword.trim();
	}

	public Integer getHitcount() {
		return hitcount;
	}

	public void setHitcount(Integer hitcount) {
		this.hitcount = hitcount;
	}

	public Integer getCommentcount() {
		return commentcount;
	}

	public void setCommentcount(Integer commentcount) {
		this.commentcount = commentcount;
	}

	public String getCreatedate() {
		return createdate;
	}

	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	public String getEditdate() {
		return editdate;
	}

	public void setEditdate(String editdate) {
		this.editdate = editdate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content == null ? null : content.trim();
	}
}