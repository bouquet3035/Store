package org.barakamon.service;

import java.util.List;

import javax.inject.Inject;

import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.Criteria;
import org.barakamon.mapper.BoardMapper;
import org.barakamon.mapper.BuyProMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.java.Log;

@Transactional
@Service
@Log
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardMapper mapper; 
	
	@Autowired
	private BuyProMapper bpmapper;
	
	@Override
	public List<BoardDTO> list(Criteria cri) {
		
		cri.setTotal(mapper.getTotal(cri));
		
		return mapper.listPage(cri);
	}

	@Override
	public BoardDTO get(Long tno) {
		// TODO Auto-generated method stub
		return mapper.findById(tno);
	}

	public void registerPost(BoardDTO bDto, BuyProDTO bpDto) {
		log.info("service registerPost: " + bDto);
		mapper.registerPost(bDto);
		log.info(bpDto.toString());
		bpmapper.registerBuyPro(bpDto);
	}

	@Override
	public void remove(Long tno) {
		mapper.remove(tno);
	}

	@Override
	public void modify(BoardDTO bDto, Criteria cri) {
		log.info("modify : "+bDto);
		mapper.update(bDto);
	}
}
