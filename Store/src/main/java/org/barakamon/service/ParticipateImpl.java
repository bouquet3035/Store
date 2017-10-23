package org.barakamon.service;

import java.util.List;

import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;
import org.barakamon.mapper.ParticipateMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.java.Log;

@Service
@Log
public class ParticipateImpl implements ParticipateService {
	
	@Autowired ParticipateMapper pmapper;

	@Transactional
	@Override
	public void addPeople(CoBuyDTO dto) {
		// TODO Auto-generated method stub
		pmapper.addPeople(dto.getOno());
		pmapper.addname(dto);
	}
	

	@Override
	public BuyProDTO buyproList(Long tno) {
		// TODO Auto-generated method stub
		log.info("buyproList:"+tno);
		return 	pmapper.buyproList(tno);
	}

	@Override
	public List<CoBuyDTO> cobuyList(Long ono) {
		// TODO Auto-generated method stub
		log.info("cobuyList :"+ ono);
		return pmapper.cobuyList(ono) ; 
	}

	@Override
	public void addComplition(CoBuyDTO dto) {
		// TODO Auto-generated method stub
		pmapper.addComplition(dto.getOno());
	}


	@Override
	public BuyProDTO checkExpired(Long ono) {
		return pmapper.checkExpired(ono); 
	}



}
