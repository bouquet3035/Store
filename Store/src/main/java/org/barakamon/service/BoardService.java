package org.barakamon.service;

import java.util.List;


import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.Criteria;

public interface BoardService {

	public List<BoardDTO> list(Criteria cri);
	
	public void registerPost(BoardDTO bDto);

	public BoardDTO get(Long tno);

	public void remove(Long tno);

}
