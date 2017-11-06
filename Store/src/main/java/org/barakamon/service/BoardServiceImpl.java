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

		if (cri.getSearchType() == null) {
			cri.setTotal(mapper.getTotal(cri));

			return mapper.listPage(cri);
			
		} else if (cri.getSearchType().equals("bpno")) {
			cri.setTotal(mapper.getPnoTotal(cri));

			return mapper.searchPno(cri);
			
		} else if (cri.getSearchType().equals("t")) {
			cri.setTotal(mapper.getTitleTotal(cri));

			return mapper.searchTitle(cri);
			
		} else if (cri.getSearchType().equals("c")) {
			cri.setTotal(mapper.getTnCTotal(cri));

			return mapper.searchContent(cri);

		} else if (cri.getSearchType().equals("tc")) {
			cri.setTotal(mapper.getTnCTotal(cri));

			return mapper.searchTnC(cri);

		} else if (cri.getSearchType().equals("wn")) {
			cri.setTotal(mapper.getWNTotal(cri));

			return mapper.searchWriterName(cri);

		}  else if (cri.getSearchType().equals("wi")) {
			cri.setTotal(mapper.getWITotal(cri));

			return mapper.searchWriterID(cri);

		} else if (cri.getSearchType().equals("p")) {
			cri.setTotal(mapper.getPnameTotal(cri));

			return mapper.searchPname(cri);
		}

		cri.setTotal(mapper.getTotal(cri));

		return mapper.listPage(cri);
	}

	@Override
	public BoardDTO get(Long bno) {
		mapper.viewInc(bno);
		BoardDTO dto = mapper.findById(bno);
		return dto;
	}

	@Override
	public void registerPost(BoardDTO bDto, BuyProDTO bpDto) {
		mapper.registerPost(bDto);
		bpmapper.registerBuyPro(bpDto);
		bpmapper.registerCoBuy(bDto);
	}

	@Override
	public void remove(Long bno) {
		mapper.remove(bno);
	}

	@Override
	public void modify(BoardDTO bDto, Criteria cri) {
		log.info("modify : " + bDto);
		mapper.update(bDto);
	}

	@Override
	public BuyProDTO bpInfo(Long bno) {
		return bpmapper.bpInfo(bno);
	}

	@Override
	public List<CoBuyDTO> cbInfo(Long ono) {
		return bpmapper.cbInfo(ono);
	}

}
