package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;

public interface BuyProMapper {

	@Insert("insert into tbl_buypro (bpno, bpimg, bpname, bpevent, bsaleprice, boriprice, tno, curpeople, maxpeople, bpexpired) "
			+ "values(#{bpno}, #{bpimg}, #{bpname}, #{bpevent}, #{bsaleprice}, #{boriprice}, LAST_INSERT_ID(), 1, 2, false)")
	public void registerBuyPro(BuyProDTO bpDto);

	@Select("select * from tbl_buypro where tno = #{tno}")
	public BuyProDTO bpInfo(Long tno);

	@Insert("insert into tbl_cobuy (ono, mname, mid) values(LAST_INSERT_ID(), #{writer}, #{mid})")
	public void registerCoBuy(BoardDTO bDto);
	
	@Insert("insert into tbl_cobuy (ono, mname, mid) values(#{ono}, #{mname}, #{mid})")
	public void joinCoBuy(CoBuyDTO cDto);

	@Select("select * from tbl_cobuy where ono = #{ono}")
	public List<CoBuyDTO> cbInfo(Long ono);

}
