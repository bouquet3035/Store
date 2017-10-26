package org.barakamon.service;

import java.util.List;

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
	public void registermemberPost(MemberDTO mDto) {
		// TODO Auto-generated method stub
		log.info("" +mDto.getMid());
		log.info("" +mDto.getMpw());
		mmapper.registermemberPost(mDto);
	}

	@Override
	public void updatemember(MemberDTO mDto) throws Exception {
		// TODO Auto-generated method stub
		mmapper.updatemember(mDto);
	}

	@Override
	public void deletemember(String mid) throws Exception {
		// TODO Auto-generated method stub
		mmapper.deletemember(mid);
	}

	@Override
	public List<MemberDTO> checkmember(MemberDTO mDto) {
		// TODO Auto-generated method stub
		return mmapper.checkmember(mDto);
	}

	

}
