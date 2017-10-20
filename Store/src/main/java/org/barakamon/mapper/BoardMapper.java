package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.Criteria;


public interface BoardMapper {
	
	
	@Select("select * from tbl_board order by tno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> listPage(Criteria cri); 
	
	@Select("select count(*) from tbl_board where tno > 0")
	public int getTotal(Criteria cri);
	
	@Insert("insert into tbl_board (title,writer,contents) values(#{title},#{writer},#{contents})")
	public void registerPost(BoardDTO bDto) ;

	@Select("select * from tbl_board where tno = #{tno}")
	public BoardDTO findById(Long tno);

	@Delete("delete from tbl_board where tno = #{tno}")
	public void remove(long tno);
	
	@Update("update tbl_board set title = #{title} , contents= #{contents} where tno = #{tno}")
	public void update(BoardDTO bDto);

	@Update("update tbl_board set replycount = #{replycount} where tno = #{tno}")
	public void updateReplyCount(BoardDTO bDto);

	@Update("update tbl_board set viewcount = #{viewcount} where tno = #{tno}")
	public void viewInc(BoardDTO bDto);
	
	@Select("SELECT bd.* FROM tbl_board bd, tbl_buypro bp "
			+ "WHERE bd.tno = bp.tno and bpno = #{searchByStr} and expired = 0 order by bd.tno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> searchByPno(Criteria cri);
	
	@Select("select count(*) FROM tbl_board bd, tbl_buypro bp "
			+ "WHERE bd.tno = bp.tno and bpno = #{searchByStr} and bd.tno > 0 and expired = 0 order by bd.tno desc")
	public int getSearchTotal(Criteria cri);
	
}
