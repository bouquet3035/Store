package org.barakamon.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {
	
	private Long bno; 
	private String title; 
	private String writer, mid, mname; 
	private String contents; 
	private Date bregdate; 
	private Long viewcount;
	private Long replycount; 
	private Boolean expired;
	private Date expiredtime;
 
}
