package org.barakamon.dto;

import lombok.Data;

@Data
public class BuyProDTO {
	
	private Long ono;
	private String bpno, bpimg, bpname, bpevent;
	private Long bsaleprice, boriprice, tno;
}
