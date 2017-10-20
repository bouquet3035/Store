package org.barakamon.web;

import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.java.Log;

@RestController
@RequestMapping("/cobuy/*")
@Log
public class ExampleParticipateController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/list/")
	public BuyProDTO list(BoardDTO dto, Model model) {
		log.info(""+service.bpInfo(dto.getTno()));
//		model.addAttribute("buypro",service.bpInfo(dto.getTno()));
//		model.addAttribute("cobuy", seirvce.cbInfo(service.bpInfo(dto.getTno()).getOno()));
		return service.bpInfo(dto.getTno());
	}
	
	
 
}
