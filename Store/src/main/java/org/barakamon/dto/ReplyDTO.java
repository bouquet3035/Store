package org.barakamon.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyDTO {

	private Integer rno;
	private String reply;
	private String replyer;
	private Date replydate;
	private Long tno;
}
