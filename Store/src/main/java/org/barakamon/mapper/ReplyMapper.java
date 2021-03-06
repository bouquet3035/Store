package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import org.barakamon.dto.Criteria;
import org.barakamon.dto.ReplyDTO;

public interface ReplyMapper {

	@Insert("insert into tbl_reply (reply, mname, bno, mid) values (#{reply}, #{mname}, #{bno}, #{mid})")
	public void create(ReplyDTO rDto);
	
	@Select("select * from tbl_reply where rno=#{rno}")
	public ReplyDTO read(Integer rno);
	
	@Update("update tbl_reply set reply = #{reply} where rno = #{rno}")
	public void update(ReplyDTO rDto);
	
	@Delete("delete from tbl_reply where rno = #{rno}")
	public void delete(Integer rno);
	
	@Select("select * from tbl_reply where bno = #{keyword} order by rno limit #{skip}, 100")
	public List<ReplyDTO> list(Criteria cri);
	
	@Select("select count(*) from tbl_reply where bno = #{bno}")
	public Long replycount(Long bno);

	
}
