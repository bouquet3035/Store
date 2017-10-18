package org.barakamon.dto;



import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.extern.java.Log;

@Log
public class Criteria {

	private int page;
	private int total;
	private Long searchByInt;
//	private String searchByStr;
	
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
		return (this.page - 1) *10;
	}
	
	public String getURI() {
		//String template = "";
	    UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page).build();
	    return uriComponents.toUriString();		
	}

	public Long getSearchByInt() {
		return searchByInt;
	}

	public void setSearchByInt(Long searchByInt) {
		this.searchByInt = searchByInt;
	}
}
