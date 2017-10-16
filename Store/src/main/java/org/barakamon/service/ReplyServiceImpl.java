package org.barakamon.service;

import java.util.List;

import org.barakamon.dto.Criteria;
import org.barakamon.dto.ReplyDTO;
import org.barakamon.mapper.BoardMapper;
import org.barakamon.mapper.ReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper mapper;
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Transactional
	@Override
	public void register(ReplyDTO rDto) {
	
		mapper.create(rDto);
		boardMapper.updateReplyCnt(rDto.getTno());
	}

	@Override
	public ReplyDTO get(Integer rno) {
		// TODO Auto-generated method stub
		return mapper.read(rno);
	}

	@Override
	public void remove(Integer rno) {
		// TODO Auto-generated method stub
		mapper.delete(rno);
	}

	@Override
	public void update(ReplyDTO rDto) {
		// TODO Auto-generated method stub
		mapper.update(rDto);
	}

	@Override
	public List<ReplyDTO> listPage(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.list(cri);
	}

}