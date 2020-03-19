package com.bit.companion.model.entity.mypage;

public class MypageQuestionVo {

	private String question_id;
	private String question_type_id;
	private String order_id;
	private String product_id;
	private String member_id;
	private String question_date;
	private String question_answerdate;
	private String question_title;
	private String question_content;
	private String question_image;
	private String question_answer;
	
	private String product_thumb;
	private String product_name;
	
	public MypageQuestionVo() {
		// TODO Auto-generated constructor stub
	}

	public String getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(String question_id) {
		this.question_id = question_id;
	}

	public String getQuestion_type_id() {
		return question_type_id;
	}

	public void setQuestion_type_id(String question_type_id) {
		this.question_type_id = question_type_id;
	}

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getQuestion_date() {
		return question_date;
	}

	public void setQuestion_date(String question_date) {
		this.question_date = question_date;
	}

	public String getQuestion_answerdate() {
		return question_answerdate;
	}

	public void setQuestion_answerdate(String question_answerdate) {
		this.question_answerdate = question_answerdate;
	}

	public String getQuestion_title() {
		return question_title;
	}

	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}

	public String getQuestion_content() {
		return question_content;
	}

	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}

	public String getQuestion_image() {
		return question_image;
	}

	public void setQuestion_image(String question_image) {
		this.question_image = question_image;
	}

	public String getQuestion_answer() {
		return question_answer;
	}

	public void setQuestion_answer(String question_answer) {
		this.question_answer = question_answer;
	}

	public String getProduct_thumb() {
		return product_thumb;
	}

	public void setProduct_thumb(String product_thumb) {
		this.product_thumb = product_thumb;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	@Override
	public String toString() {
		return "MypageQuestionVo [question_id=" + question_id + ", question_type_id=" + question_type_id + ", order_id="
				+ order_id + ", product_id=" + product_id + ", member_id=" + member_id + ", question_date="
				+ question_date + ", question_answerdate=" + question_answerdate + ", question_title=" + question_title
				+ ", question_content=" + question_content + ", question_image=" + question_image + ", question_answer="
				+ question_answer + ", product_thumb=" + product_thumb + ", product_name=" + product_name + "]";
	}
	
	
}
