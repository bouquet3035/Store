package org.barakamon.service;

import java.util.List;


import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;
import org.barakamon.dto.Criteria;


public interface BoardService {

	public List<BoardDTO> list(Criteria cri);

	public void registerPost(BoardDTO bDto, BuyProDTO bpDto);

	public BoardDTO get(Long bno);

	public void remove(Long bno);
	
	public void modify(BoardDTO bDto, Criteria cri);
	
	public BuyProDTO bpInfo(Long bno);

	public List<CoBuyDTO> cbInfo(Long ono);
}
