package org.barakamon.service;

import java.util.List;

import javax.inject.Inject;

import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.Criteria;
import org.barakamon.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;

@Service
@Log
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardMapper mapper; 
	
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

	public void registerPost(BoardDTO bDto) {
		log.info("service registerPost: " + bDto);
		mapper.registerPost(bDto);
	}

}
