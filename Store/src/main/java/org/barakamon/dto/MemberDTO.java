package org.barakamon.dto;

import java.util.Date;

import lombok.Data;



@Data
public class MemberDTO {

	private Long mno;
	private String mid, mpw, mname;
	private Date mregdate;
	

	}

