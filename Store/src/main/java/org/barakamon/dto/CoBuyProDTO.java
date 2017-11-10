package org.barakamon.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class CoBuyProDTO {
	
	private Long ono;
//	private String bpno;
	private String pimg, pname, pevent;
	private Long saleprice, oriprice, curpeople, maxpeople;
//	private Long tno;
	private Boolean oexpired;
//	private Date oregdate;
//	private List<CoBuyDTO> cdto;
	private List<String> mname;

}
