package com.bit.companion.model.entity.order;

public class LikeVo {
	private int like_id;
	private String member_id;
	private int product_id;
	
	public LikeVo() {
	}
	
	public LikeVo(int like_id, String member_id, int product_id) {
		super();
		this.like_id = like_id;
		this.member_id = member_id;
		this.product_id = product_id;
	}
	@Override
	public String toString() {
		return "LikeVo [like_id=" + like_id + ", member_id=" + member_id + ", product_id=" + product_id + "]";
	}
	public int getLike_id() {
		return like_id;
	}
	public void setLike_id(int like_id) {
		this.like_id = like_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	
}
