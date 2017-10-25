package org.barakamon.mapper;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Select;
import org.barakamon.dto.LoginDTO;
import org.barakamon.dto.MemberDTO;



@Resource
public interface MemberMapper {

	@Select("select * from tbl_members where mid=#{mid} and mpw=#{mpw}")
	public MemberDTO findByID(LoginDTO dto);

	@Select("select * from tbl_members where mid=#{mid}")
	public MemberDTO findByCookie(String mid);
}
