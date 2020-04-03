package com.bit.companion.common;

//[source]https://freehoon.tistory.com/112
public class Pagination {
	private int listSize = 15;                //	Number of posts per page
	private int rangeSize = 5;            // Number of pages per range
	private int page;
	private int range;
	private int listCnt;
	private int pageCnt;
	private int startPage;
	private int startList;
	private int endPage;
	private boolean prev;
	private boolean next;

	/* Constructor */
	public Pagination() {}

	/* Getter & Setter */
	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getRangeSize() {
		return rangeSize;
	}

	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRange() {
		return range;
	}

	public void setRange(int range) {
		this.range = range;
	}

	public int getListCnt() {
		return listCnt;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getStartList() {
		return startList;
	}

	public void setStartList(int startList) {
		this.startList = startList;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}
	
	@Override
	public String toString() {
		return "Pagination [listSize=" + listSize + ", rangeSize=" + rangeSize + ", page=" + page + ", range=" + range
				+ ", listCnt=" + listCnt + ", pageCnt=" + pageCnt + ", startPage=" + startPage + ", startList="
				+ startList + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next + "]";
	}

	/* pagination */
	public void pageInfo(int page, int range, int listCnt) {
		this.page = page; // Current page 현재 페이지 정보
		this.range = range; // Current range 현재 페이지 범위 정보
		this.listCnt = listCnt; // Total posts 게시물 총 개수
		
		// Number of pages 전체 페이지 수
		this.pageCnt = (int) Math.ceil(listCnt*1.0/listSize);

		// Start page number 페이지범위의 시작번호
		this.startPage = (range - 1) * rangeSize + 1 ;

		// End page number 페이지 범위의 마지막 번호
		this.endPage = range * rangeSize;

		// Start post number
		this.startList = (page - 1) * listSize;

		// prev button 
		this.prev = range == 1 ? false : true;

		// next button
		this.next = endPage >= pageCnt ? false : true;
		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}
	}

}
