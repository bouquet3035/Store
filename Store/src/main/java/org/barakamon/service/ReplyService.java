package org.barakamon.service;

import java.util.List;

import org.barakamon.dto.Criteria;
import org.barakamon.dto.ReplyDTO;
import org.springframework.stereotype.Service;


@Service
public interface ReplyService {

	public void register(ReplyDTO rDto);
	
	public ReplyDTO get(Integer rno);
	
	public void remove(Integer rno);
	
	public void update(ReplyDTO rDto);
	
	public List<ReplyDTO> listPage(Criteria cri, Long tno);
}
