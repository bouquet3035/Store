package org.barakamon.service;

import java.util.List;

import org.barakamon.dto.ProDTO;
import org.barakamon.mapper.ProMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;

@Service
@Log
public class ProServiceImpl implements ProService{

	@Autowired
	private ProMapper mapper;
	
	@Override
	public List<ProDTO> getList() {

		return mapper.getList();
	}

}
