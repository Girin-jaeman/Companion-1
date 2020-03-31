package com.bit.companion.common;

public class Search extends Pagination{
	private String searchType;
	private String keyword;
	private int board_id;
	
	public Search() {
	}

	public Search(String searchType, String keyword, int board_id) {
		super();
		this.searchType = searchType;
		this.keyword = keyword;
		this.board_id = board_id;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getBoard_id() {
		return board_id;
	}

	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}

	@Override
	public String toString() {
		return "Search [searchType=" + searchType + ", keyword=" + keyword + ", board_id=" + board_id + "]";
	}

}
