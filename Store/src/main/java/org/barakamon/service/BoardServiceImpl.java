package org.barakamon.service;

import java.util.List;

import javax.inject.Inject;

import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;
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
		
		if(cri.getSearchType() == null) {			
			cri.setTotal(mapper.getTotal(cri));
			
			return mapper.listPage(cri);
		}
		cri.setTotal(mapper.getSearchTotal(cri));
		
		return mapper.search(cri);
	}

	@Override
	public BoardDTO get(Long tno) {
		mapper.viewInc(tno);
		BoardDTO dto = mapper.findById(tno);
		return dto;
	}

	@Override
	public void registerPost(BoardDTO bDto, BuyProDTO bpDto) {
		mapper.registerPost(bDto);
		bpmapper.registerBuyPro(bpDto);
		log.info("입력되는 bpDTO: " + bpDto);
		bpmapper.registerCoBuy(bDto);

	}

	@Override
	public void remove(Long tno) {
		mapper.remove(tno);
	}

	@Override
	public void modify(BoardDTO bDto, Criteria cri) {
		log.info("modify : " + bDto);
		mapper.update(bDto);
	}

	@Override
	public BuyProDTO bpInfo(Long tno) {
		return bpmapper.bpInfo(tno);
	}

	@Override
	public List<CoBuyDTO> cbInfo(Long ono) {
		return bpmapper.cbInfo(ono);
	}



}
