package com.bit.companion.model.entity.mypage;

import java.util.List;

import org.springframework.stereotype.Component;

@Component("cartOrderList")
public class MyCartOrderList {
	private List<String> list;

	public List<String> getList() {
		return list;
	}

	public void setList(List<String> list) {
		this.list = list;
	}
	
	public MyCartOrderList() {
	}

	@Override
	public String toString() {
		return "MyCartOrderList [list=" + list + "]";
	}

	
	
}
