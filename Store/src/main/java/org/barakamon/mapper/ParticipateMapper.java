package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;
import org.barakamon.dto.CoBuyProDTO;

public interface ParticipateMapper {
	//update ���̺�� set �÷��� = �÷���+ 1 where �÷��� = �� // �÷����� ���̸� 1�� ����
	// �������
	@Update("update tbl_order set curpeople =curpeople +1 where ono = #{ono}") 
	public void addPeople(Long ono);

	//update��  oexpired = true ���ִ� �ڵ� 
	@Update("update tbl_order set oexpired =true where ono = #{ono}")
	public void addComplition(Long ono); 
	
	//  
	@Select("select * from tbl_order where ono = #{ono}")
	public BuyProDTO checkExpired (Long ono) ; 
	
	@Insert("insert into tbl_buy (ono,mname, mid) values(#{ono},#{mname}, #{mid})")
	public void addname(CoBuyDTO cbDto);
	
	
	//�ش��ǰ view �� �ѷ��ִ� ��Ȱ 
	// �ش� �Խ���(buypro.bno) �� ��ȣ 
	@Select ("select * from tbl_order where bno = #{bno}")
	public BuyProDTO buyproList(Long bno); 
	
	@Select("select * from tbl_buy where ono = #{ono}")
	public List<CoBuyDTO> cobuyList(Long ono);
	
	public List<CoBuyProDTO> getProInfoList(Long bno);
	
	
	@Select("select * from tbl_buy where ono=#{ono} and mid = #{mid}")
	public List<CoBuyDTO> buyerCheck(CoBuyDTO dto);
	
}
