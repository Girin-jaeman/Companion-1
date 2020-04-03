package com.bit.companion.controller.order;

public class OrderPagination {
//	한 페이지당 게시글 수
	private int pageSize =10;
//	한 블럭 당 페이지 수
	private int rangeSize = 10;
//	현재 페이지
	private int curPage =1;
//	 현재 블럭
	private int curRange=1;
//	총 게시글 수
	private int listCnt;
//	총 페이지 수
	private int pageCnt;
//	총 블럭 수
	private int rangeCnt;
//	시작 페이지
	private int startPage=1;
//	끝 페이지
	private int endPage=1;
//	시작 index
	private int startIndex=0;
//	이전 페이지
	private int prevPage;
//	다음 페이지
	private int nextPage;
	
	public OrderPagination() {
	}
	
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getRangeSize() {
		return rangeSize;
	}

	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getCurRange() {
		return curRange;
	}

	public void setCurRange(int curRange) {
		this.curRange = curRange;
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

	public int getRangeCnt() {
		return rangeCnt;
	}

	public void setRangeCnt(int rangeCnt) {
		this.rangeCnt = rangeCnt;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	@Override
	public String toString() {
		return "OrderPagination [pageSize=" + pageSize + ", rangeSize=" + rangeSize + ", curPage=" + curPage
				+ ", curRange=" + curRange + ", listCnt=" + listCnt + ", pageCnt=" + pageCnt + ", rangeCnt=" + rangeCnt
				+ ", startPage=" + startPage + ", endPage=" + endPage + ", startIndex=" + startIndex + ", prevPage="
				+ prevPage + ", nextPage=" + nextPage + "]";
	}
	public OrderPagination(int pageSize, int rangeSize, int curPage, int curRange, int listCnt, int pageCnt,
			int rangeCnt, int startPage, int endPage, int startIndex, int prevPage, int nextPage) {
		super();
		this.pageSize = pageSize;
		this.rangeSize = rangeSize;
		this.curPage = curPage;
		this.curRange = curRange;
		this.listCnt = listCnt;
		this.pageCnt = pageCnt;
		this.rangeCnt = rangeCnt;
		this.startPage = startPage;
		this.endPage = endPage;
		this.startIndex = startIndex;
		this.prevPage = prevPage;
		this.nextPage = nextPage;
	}
	
}
