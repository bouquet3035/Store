package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.Criteria;

public interface BoardMapper {
	
	
	@Select("select * from tbl_board order by tno desc limit #{skip}, 10")
	public List<BoardDTO> listPage(Criteria cri); 
	
	@Select("select count(*) from tbl_board where tno > 0")
	public int getTotal(Criteria cri);

	@Select("select * from tbl_board where tno = #{tno}")
	public BoardDTO findById(Long tno);

	public void registerPost(BoardDTO bDto);

}
