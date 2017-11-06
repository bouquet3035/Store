package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;

public interface BuyProMapper {

	@Insert("insert into tbl_order (pno, pimg, pname, pevent, saleprice, oriprice, bno, curpeople, maxpeople, oexpired) "
			+ "values(#{pno}, #{pimg}, #{pname}, #{pevent}, #{saleprice}, #{oriprice}, LAST_INSERT_ID(), 1, 2, false)")
	public void registerBuyPro(BuyProDTO bpDto);

	@Select("select * from tbl_order where bno = #{bno}")
	public BuyProDTO bpInfo(Long bno);

	@Insert("insert into tbl_buy (ono, mname, mid) values(LAST_INSERT_ID(), #{writer}, #{mid})")
	public void registerCoBuy(BoardDTO bDto);
	
	@Insert("insert into tbl_buy (ono, mname, mid) values(#{ono}, #{mname}, #{mid})")
	public void joinCoBuy(CoBuyDTO cDto);

	@Select("select * from tbl_buy where ono = #{ono}")
	public List<CoBuyDTO> cbInfo(Long ono);

}
