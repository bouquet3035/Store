package org.barakamon.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BuyProDTO {
	
	private Long ono;
	private String bpno, bpimg, bpname, bpevent;
	private Long bsaleprice, boriprice, tno, curpeople, maxpeople;
	private Boolean bpexpired;
	private Date oregdate;
}
