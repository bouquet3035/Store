package org.barakamon.service;



import org.barakamon.dto.LoginDTO;
import org.barakamon.dto.MemberDTO;

public interface MemberService {

	public MemberDTO login(LoginDTO dto) throws Exception;

	

}
