package org.barakamon.web;

import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.BuyProDTO;
import org.barakamon.dto.CoBuyDTO;
import org.barakamon.service.ParticipateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.java.Log;
@Log
@RequestMapping("/participate/*")
@RestController
public class ParticipateController {
	
	@Autowired 
	private ParticipateService service;
	
	@PostMapping("/new")
	public void addParticipate(@RequestBody CoBuyDTO dto) {
		log.info("CoBuyono:"+ dto.getOno());
		service.addPeople(dto);
	}
	
	//������ ����Ʈ �ѷ��ִ� ��Ȱ  // �ش� �Խù� ��ȣ �� �ʿ������� �Ķ���Ϳ� BoardDTO dto ���� 
	//BuyProDTO �� �ʿ��� ������ �ش� ��ǰ �� ������ �ʿ��ϱ⶧���� 
	//��� : �Ķ���� ���� ��ȯ Ÿ���� �򰥸��� .
	@GetMapping("/itemlist/")
	public BuyProDTO itemList(BoardDTO dto, Model model) {
		
		log.info("Itemlist:"+service.buyproList(dto.getTno()));
	//	model.addAttribute("itemlist",service.buyproList(dto.getTno()));
	//	model.addAttribute("cobuylist",service.cobuyList(service.buyproList(dto.getTno()).getOno()));
		return service.buyproList(dto.getTno());
		
	}

}
