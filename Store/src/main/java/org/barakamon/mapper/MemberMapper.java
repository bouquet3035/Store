package org.barakamon.mapper;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.barakamon.dto.LoginDTO;
import org.barakamon.dto.MemberDTO;



@Resource
public interface MemberMapper {

	//로그인
	@Select("select * from tbl_members where mid=#{mid} and mpw=#{mpw}")
	public MemberDTO findByID(LoginDTO dto);
	
	//쿠키로 세션 아이디 검색
	@Select("select * from tbl_members where mid=#{mid}")
	public MemberDTO findByCookie(String mid);
	
	//회원가입
	@Insert("insert into tbl_members (mid, mpw, mname) values mid=#{mid}, mpw=#{mpw}, mname=#{mname}")
	public MemberDTO registermember(MemberDTO mDto);
	
	//회원정보수정
	@Update("update tbl_members set mname = #{mname} where mid = #{mid}")
	public MemberDTO updatemember(MemberDTO mDto);
	
	//회원 탈퇴
	@Delete("delete from tbl_members where mid = #{mid}")
	public MemberDTO deletemember(String mid);
}
