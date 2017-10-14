package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.barakamon.dto.ProDTO;


public interface ProMapper {

	@Select("select * from tbl_pro")
	public List<ProDTO> getList(); 
	
	@Select("select * from tbl_pro where pno = #{pno}")
	public ProDTO pInfo(Integer pno);
}
