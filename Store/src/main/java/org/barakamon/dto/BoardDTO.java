package org.barakamon.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {
	
	private Long tno; 
	private String title; 
	private String writer, mid; 
	private String contents; 
	private Date regdate; 
	private Long viewcount;
	private Long replycount; 
	private Boolean expired;
	private Date expiretime;
 
}
