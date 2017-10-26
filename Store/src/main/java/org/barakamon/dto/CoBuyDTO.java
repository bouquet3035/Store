package org.barakamon.dto;

import java.util.Date;

import lombok.Data;

@Data
public class CoBuyDTO {
	
	private Long cno, ono;
	private String mname, mid;
	private Date cregdate;
}
