package org.barakamon.service;

import java.util.List;

import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;
import org.barakamon.dto.CoBuyProDTO;
import org.barakamon.mapper.ParticipateMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.java.Log;

@Service
@Log
public class ParticipateImpl implements ParticipateService {
	
	@Autowired 
	private ParticipateMapper pmapper;

	@Transactional
	@Override
	public void addPeople(CoBuyDTO dto) {
		// TODO Auto-generated method stub
		
		if(pmapper.buyerCheck(dto) == null) {
			pmapper.addPeople(dto.getOno());
			pmapper.addname(dto);
			pmapper.addComplition(dto.getOno());
		}
	}
	

	@Override
	public BuyProDTO buyproList(Long tno) {
		return 	pmapper.buyproList(tno);
	}

	@Override
	public List<CoBuyDTO> cobuyList(Long ono) {
		return pmapper.cobuyList(ono) ; 
	}

	@Override
	public BuyProDTO checkExpired(Long ono) {
		return pmapper.checkExpired(ono); 
	}


	@Override
	public List<CoBuyProDTO> viewProInfo(Long tno) {
		return pmapper.getProInfoList(tno);
	}



}
