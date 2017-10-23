package org.barakamon.service;

import java.util.List;

import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.Criteria;
import org.barakamon.dto.ReplyDTO;
import org.barakamon.mapper.BoardMapper;
import org.barakamon.mapper.ReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.java.Log;

@Service
@Transactional
@Log
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper mapper;
	
	@Autowired
	private BoardMapper bmapper;
	

	@Override
	public void register(ReplyDTO rDto) {
		Long tno = rDto.getTno();
		mapper.create(rDto);
		
		BoardDTO bDto = new BoardDTO();
		bDto.setTno(tno);
		bDto.setReplycount(mapper.replycount(tno));
		
		bmapper.updateReplyCount(bDto);

	}

	@Override
	public ReplyDTO get(Integer rno) {
		// TODO Auto-generated method stub
		return mapper.read(rno);
	}

	@Override
	public void remove(Integer rno) {
		ReplyDTO rDto = mapper.read(rno);
		Long tno = rDto.getTno();
		mapper.delete(rno);
		
		BoardDTO bDto = new BoardDTO();
		bDto.setTno(tno);
		bDto.setReplycount(mapper.replycount(tno));
		
		bmapper.updateReplyCount(bDto);
	}

	@Override
	public void update(ReplyDTO rDto) {
		// TODO Auto-generated method stub
		mapper.update(rDto);
	}

	@Override
	public List<ReplyDTO> listPage(Criteria cri, Long tno) {
		cri.setKeyword("" + tno);
		
		return mapper.list(cri);
	}

}
