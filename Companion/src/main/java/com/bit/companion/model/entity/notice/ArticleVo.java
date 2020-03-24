package com.bit.companion.model.entity.notice;

import java.sql.Date;

public class ArticleVo {
	private int board_id;
	private int article_id;
	private String member_id;
	private String article_title;
	private String article_content;
	private Date article_date;
	private int article_count;
	private String article_image;
	private String article_thumb;
	
	public ArticleVo() {}

	public ArticleVo(int board_id, int article_id, String member_id, String article_title, String article_content,
			Date article_date, int article_count, String article_image, String article_thumb) {
		super();
		this.board_id = board_id;
		this.article_id = article_id;
		this.member_id = member_id;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_date = article_date;
		this.article_count = article_count;
		this.article_image = article_image;
		this.article_thumb = article_thumb;
	}

	public int getBoard_id() {
		return board_id;
	}

	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}

	public int getArticle_id() {
		return article_id;
	}

	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getArticle_title() {
		return article_title;
	}

	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public Date getArticle_date() {
		return article_date;
	}

	public void setArticle_date(Date article_date) {
		this.article_date = article_date;
	}

	public int getArticle_count() {
		return article_count;
	}

	public void setArticle_count(int article_count) {
		this.article_count = article_count;
	}

	public String getArticle_image() {
		return article_image;
	}

	public void setArticle_image(String article_image) {
		this.article_image = article_image;
	}

	public String getArticle_thumb() {
		return article_thumb;
	}

	public void setArticle_thumb(String article_thumb) {
		this.article_thumb = article_thumb;
	}

	@Override
	public String toString() {
		return "NoticeVo [board_id=" + board_id + ", article_id=" + article_id + ", member_id=" + member_id
				+ ", article_title=" + article_title + ", article_content=" + article_content + ", article_date="
				+ article_date + ", article_count=" + article_count + ", article_image=" + article_image
				+ ", article_thumb=" + article_thumb + "]";
	}
	
}
