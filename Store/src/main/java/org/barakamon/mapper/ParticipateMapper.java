package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;
import org.barakamon.dto.CoBuyProDTO;

public interface ParticipateMapper {
	//update 테이블명 set 컬럼명 = 컬럼명+ 1 where 컬럼명 = 값 // 컬럼명이 값이면 1을 더함
	// 사람증가
	@Update("update tbl_order set curpeople =curpeople +1 where ono = #{ono}") 
	public void addPeople(Long ono);

	//update시  oexpired = true 해주는 코드 
	@Update("update tbl_order set oexpired =true where ono = #{ono}")
	public void addComplition(Long ono); 
	
	//  
	@Select("select * from tbl_order where ono = #{ono}")
	public BuyProDTO checkExpired (Long ono) ; 
	
	@Insert("insert into tbl_buy (ono,mname, mid) values(#{ono},#{mname}, #{mid})")
	public void addname(CoBuyDTO cbDto);
	
	
	//해당상품 view 에 뿌려주는 역활 
	// 해당 게시판(buypro.bno) 의 번호 
	@Select ("select * from tbl_order where bno = #{bno}")
	public BuyProDTO buyproList(Long bno); 
	
	@Select("select * from tbl_buy where ono = #{ono}")
	public List<CoBuyDTO> cobuyList(Long ono);
	
	public List<CoBuyProDTO> getProInfoList(Long bno);
	
	
	@Select("select * from tbl_buy where ono=#{ono} and mid = #{mid}")
	public List<CoBuyDTO> buyerCheck(CoBuyDTO dto);
	
}
