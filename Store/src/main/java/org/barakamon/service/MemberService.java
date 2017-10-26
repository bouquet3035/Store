package org.barakamon.service;



import org.barakamon.dto.LoginDTO;
import org.barakamon.dto.MemberDTO;

public interface MemberService {

	public MemberDTO login(LoginDTO dto) throws Exception;

	public void registermemberPost(MemberDTO mDto);
	
	public MemberDTO updatemember(MemberDTO mDto) throws Exception;
	
	public MemberDTO deletemember(String mid) throws Exception;

}
