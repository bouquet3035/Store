package org.barakamon.mapper;

import java.util.List;

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
	@Insert("insert into tbl_members (mid, mpw, mname) values (#{mid}, #{mpw}, #{mname})")
	public void registermemberPost(MemberDTO mDto);
	
	//회원정보수정
	@Update("update tbl_members set mname = #{mname} where mid = #{mid}")
	public void updatemember(MemberDTO mDto);
	
	//회원 탈퇴
	@Delete("delete from tbl_members where mid = #{mid}")
	public void deletemember(String mid);
	
	//닉네임 중복 체크
	@Select("select * from tbl_members where mid = #{mid} or mname = #{mname}")
	public List<MemberDTO> checkmember(MemberDTO mDto);
}
