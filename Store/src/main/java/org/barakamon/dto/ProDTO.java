package org.barakamon.dto;

import lombok.Data;

@Data
public class ProDTO {
	
	private Integer pno;
	private String pimg, pname, pevent;
	private Long saleprice, oriprice;
}
