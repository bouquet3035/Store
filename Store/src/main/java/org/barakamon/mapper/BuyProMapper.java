package org.barakamon.mapper;

import org.apache.ibatis.annotations.Insert;
import org.barakamon.dto.BuyProDTO;

public interface BuyProMapper {

	@Insert("insert into tbl_buypro (bpno, bpimg, bpname, bpevent, bsaleprice, boriprice, tno) values(#{bpno}, #{bpimg}, #{bpname}, #{bpevent}, #{bsaleprice}, #{boriprice}, LAST_INSERT_ID())")
	public void registerBuyPro(BuyProDTO bpDto);

}
