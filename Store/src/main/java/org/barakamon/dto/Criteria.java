package org.barakamon.dto;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.extern.java.Log;

@Log
public class Criteria {

	private int page;
	private int total;
	private int pageSize = 15;
	private Long searchByInt;
	private String searchByStr;
	
	public int getTotal() {   
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria() {
		this(1);
	}
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
	
		log.info("set Page: " + page);
		
		if(page <= 0) {
			page = 1;
		}	

		this.page = page;
	}
	
	public Criteria(int page) {
		
		if(page <= 0) {
			page = 1;
		}		
		this.page = page;
	}
	
	public int getSkip() {

		System.out.println("getSkip...");
		return (this.page - 1) * pageSize;
	}
	
	public String getURI() {
		//String template = "";
	    UriComponents uriComponents = UriComponentsBuilder.newInstance()
	    		.queryParam("page", page)
	    		.queryParam("pageSize", pageSize)
	    		.queryParam("searchByStr", searchByStr)
	    		.queryParam("searchByInt", searchByInt)
	    		.build();
	    return uriComponents.toUriString();		
	}

	public Long getSearchByInt() {
		return searchByInt;
	}

	public void setSearchByInt(Long searchByInt) {
		this.searchByInt = searchByInt;
	}

	public String getSearchByStr() {
		return searchByStr;
	}

	public void setSearchByStr(String searchByStr) {
		this.searchByStr = searchByStr;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", total=" + total + ", pageSize=" + pageSize + ", searchByInt=" + searchByInt
				+ ", searchByStr=" + searchByStr + "]";
	}


}
