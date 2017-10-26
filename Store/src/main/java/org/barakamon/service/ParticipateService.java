package org.barakamon.service;

import java.util.List;

import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;
import org.barakamon.dto.CoBuyProDTO;
import org.springframework.stereotype.Service;
@Service
public interface ParticipateService {
	
	public BuyProDTO checkExpired (Long ono) ; 
	
	public void addPeople(CoBuyDTO dto);
		
	public BuyProDTO buyproList(Long tno); 
	
	public List<CoBuyDTO> cobuyList(Long ono); 
	
	public List<CoBuyProDTO> viewProInfo(Long tno);
}
