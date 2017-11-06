package org.barakamon.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BuyProDTO {
	
	private Long ono;
	private String pno, pimg, pname, pevent;
	private Long saleprice, oriprice, bno, curpeople, maxpeople;
	private Boolean oexpired;
	private Date oregdate;
}
