package com.rental.geniecar.domain.board;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommonCrudVo extends BoardVo {
	private int pageNum;        // 페이지넘버
	private int pageSize = 3;   // 페이지사이즈
	private int startPage;      // 첫페이지
	private int currentPage;    // 현재페이지
	
	private int totalPageCount; // 총페이지
	private int pageCount;      // 총페이지
	private int pageBlock = 5;  // 한페이지불럭수
	private int startPageBlock; // 한페이지불럭수
	private int endPageBlock;   // 한페이지불럭수
	
	public void setPageStartSet() {
		if(this.getPageNum() == 0) {
			this.setPageNum(1);
    	}
		this.setCurrentPage(this.getPageNum());
		this.setStartPage((this.getCurrentPage()-1)*this.getPageSize()+1);
	}
	public void setPageEndSet() {
		this.pageCount = this.totalPageCount / this.pageSize 
						+ (this.totalPageCount%this.pageSize == 0 ? 0:1);
		
		this.startPageBlock = ((this.currentPage-1)/this.pageBlock)*this.pageBlock+1;
		this.endPageBlock = this.startPageBlock + pageBlock - 1;
		if(this.endPageBlock > pageCount) {
			this.endPageBlock = this.pageCount;
		}
	}
}
