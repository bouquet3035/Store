package org.barakamon.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class CoBuyProDTO {
	
	private Long ono;
//	private String bpno;
	private String bpimg, bpname, bpevent;
	private Long bsaleprice, boriprice, curpeople, maxpeople;
//	private Long tno;
	private Boolean bpexpired;
//	private Date oregdate;
//	private List<CoBuyDTO> cdto;
	private List<String> mname;

}
