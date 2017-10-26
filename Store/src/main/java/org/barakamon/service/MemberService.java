package org.barakamon.service;



import java.util.List;

import org.barakamon.dto.LoginDTO;
import org.barakamon.dto.MemberDTO;

public interface MemberService {

	public MemberDTO login(LoginDTO dto) throws Exception;

	public void registermemberPost(MemberDTO mDto);
	
	public void updatemember(MemberDTO mDto) throws Exception;
	
	public void deletemember(String mid) throws Exception;

	public List<MemberDTO> checkmember(MemberDTO mDto);
}
