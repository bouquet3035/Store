package org.barakamon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;

public interface ParticipateMapper {
	//update ���̺��� set �÷��� = �÷���+ 1 where �÷��� = �� // �÷����� ���̸� 1�� ����
	// �������
	@Update("update tbl_buypro set curpeople =curpeople +1 where ono = #{ono}") 
	public void addPeople(Long ono);
	
	@Insert("insert into tbl_cobuy (ono,mname) values(#{ono},#{mname})")
	public void addname(CoBuyDTO cbDto);
	
	
	//�ش��ǰ view �� �ѷ��ִ� ��Ȱ 
	// �ش� �Խ���(buypro.tno) �� ��ȣ 
	@Select ("select * from tbl_buypro where tno = #{tno}")
	public BuyProDTO buyproList(Long tno); 
	
	@Select("select * from tbl_cobuy where ono = #{ono}")
	public List<CoBuyDTO> cobuyList(Long ono);

}