package org.barakamon.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.BuyProDTO;

public interface BuyProMapper {

	@Insert("insert into tbl_buypro (bpno, bpimg, bpname, bpevent, bsaleprice, boriprice, tno) values(#{bpno}, #{bpimg}, #{bpname}, #{bpevent}, #{bsaleprice}, #{boriprice}, LAST_INSERT_ID())")
	public void registerBuyPro(BuyProDTO bpDto);
	
	@Select("select * from tbl_buypro where tno = #{tno}")
	public BuyProDTO bpInfo(Long tno);

}
