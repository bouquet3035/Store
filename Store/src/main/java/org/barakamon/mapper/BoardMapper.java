package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.Criteria;

public interface BoardMapper {

	@Select("select * from tbl_board order by bno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> listPage(Criteria cri);

	@Select("select count(*) from tbl_board where bno > 0")
	public int getTotal(Criteria cri);

	@Insert("insert into tbl_board (title, mname,contents, mid) values(#{title},#{mname},#{contents}, #{mid})")
	public void registerPost(BoardDTO bDto);

	@Select("select * from tbl_board where bno = #{bno}")
	public BoardDTO findById(Long bno);

	@Delete("delete from tbl_board where bno = #{bno}")
	public void remove(long bno);

	@Update("update tbl_board set title = #{title} , contents= #{contents} where bno = #{bno}")
	public void update(BoardDTO bDto);

	@Update("update tbl_board set replycount = #{replycount} where bno = #{bno}")
	public void updateReplyCount(BoardDTO bDto);

	@Update("update tbl_board set viewcount = viewcount + 1 where bno = #{bno}")
	public void viewInc(Long bno);

	// 상품 번호로 검색
	@Select("SELECT bd.* FROM tbl_board bd, tbl_order bp "
			+ "WHERE bd.bno = bp.bno and pno = #{keyword} and expired = 0 order by bd.bno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> searchPno(Criteria cri);

	@Select("select count(*) FROM tbl_board bd, tbl_order bp "
			+ "WHERE bd.bno = bp.bno and pno = #{keyword} and bd.bno > 0 and expired = 0 order by bd.bno desc")
	public int getPnoTotal(Criteria cri);

	// 제목으로 검색
	@Select("SELECT * FROM tbl_board WHERE title like concat('%', #{keyword}, '%') order by bno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> searchTitle(Criteria cri);

	@Select("select count(*) FROM tbl_board WHERE title like concat('%', #{keyword}, '%') and bno > 0 order by bno desc")
	public int getTitleTotal(Criteria cri);

	// 내용으로 검색
	@Select("SELECT * FROM tbl_board WHERE contents like concat('%', #{keyword}, '%') order by bno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> searchContent(Criteria cri);

	@Select("select count(*) FROM tbl_board WHERE contents like concat('%', #{keyword}, '%') and bno > 0 order by bno desc")
	public int getCTotal(Criteria cri);

	// 제목&내용으로 검색
	@Select("SELECT * FROM tbl_board WHERE title like concat('%', #{keyword}, '%') or contents like concat('%', #{keyword}, '%') order by bno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> searchTnC(Criteria cri);

	@Select("select count(*) FROM tbl_board WHERE title like concat('%', #{keyword}, '%') or contents like concat('%', #{keyword}, '%') and bno > 0 order by bno desc")
	public int getTnCTotal(Criteria cri);

	// 작성자 넥네임으로 로 검색
	@Select("SELECT * FROM tbl_board WHERE mname like concat('%', #{keyword}, '%') order by bno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> searchWriterName(Criteria cri);

	@Select("select count(*) FROM tbl_board WHERE mname like concat('%', #{keyword}, '%') and bno > 0 order by bno desc")
	public int getWNTotal(Criteria cri);

	// 작성자 아이디로 로 검색
	@Select("SELECT * FROM tbl_board WHERE mid = #{keyword} order by bno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> searchWriterID(Criteria cri);

	@Select("select count(*) FROM tbl_board WHERE mid = #{keyword} and bno > 0 order by bno desc")
	public int getWITotal(Criteria cri);

	// 상품 번호로 검색
	@Select("SELECT bd.* FROM tbl_board bd, tbl_order bp "
			+ "WHERE bd.bno = bp.bno and pname like concat('%', #{keyword}, '%') and expired = 0 order by bd.bno desc limit #{skip}, #{pageSize}")
	public List<BoardDTO> searchPname(Criteria cri);

	@Select("select count(*) FROM tbl_board bd, tbl_order bp "
			+ "WHERE bd.bno = bp.bno and pname like concat('%', #{keyword}, '%') and bd.bno > 0 and expired = 0 order by bd.bno desc")
	public int getPnameTotal(Criteria cri);

}
