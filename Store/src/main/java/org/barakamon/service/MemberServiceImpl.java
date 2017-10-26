package org.barakamon.service;

import javax.inject.Inject;

import org.barakamon.dto.LoginDTO;
import org.barakamon.dto.MemberDTO;
import org.barakamon.mapper.MemberMapper;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;

@Log
@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberMapper mmapper;
	
	public MemberDTO login(LoginDTO dto) throws Exception {
	log.info("" +dto.getMid());
	log.info("" +dto.getMpw());

		return mmapper.findByID(dto);
	
	}

	@Override
	public MemberDTO registermember(MemberDTO mDto) throws Exception {
		// TODO Auto-generated method stub
		return mmapper.registermember(mDto);
	}

	@Override
	public MemberDTO updatemember(MemberDTO mDto) throws Exception {
		// TODO Auto-generated method stub
		return mmapper.updatemember(mDto);
	}

	@Override
	public MemberDTO deletemember(String mid) throws Exception {
		// TODO Auto-generated method stub
		return mmapper.deletemember(mid);
	}

	

}
