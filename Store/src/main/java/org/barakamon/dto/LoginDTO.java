package org.barakamon.dto;

import lombok.Data;

@Data
public class LoginDTO {

	private String mid, mpw;
	private Boolean useCookie;
	
}