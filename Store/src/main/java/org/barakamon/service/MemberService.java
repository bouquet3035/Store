package org.barakamon.service;



import org.barakamon.dto.LoginDTO;
import org.barakamon.dto.MemberDTO;

public interface MemberService {

	public MemberDTO login(LoginDTO dto) throws Exception;

	public MemberDTO registermember(MemberDTO mDto) throws Exception;
	
	public MemberDTO updatemember(MemberDTO mDto) throws Exception;
	
	public MemberDTO deletemember(String mid) throws Exception;

}
