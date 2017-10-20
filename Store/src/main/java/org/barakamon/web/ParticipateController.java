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
	
	//아이템 리스트 뿌려주는 역활  // 해당 게시물 번호 가 필요함으로 파라미터에 BoardDTO dto 생성 
	//BuyProDTO 가 필요한 이유는 해당 상품 의 정보가 필요하기때문에 
	//결론 : 파라미터 값과 반환 타입이 헷갈린다 .
	@GetMapping("/itemlist/")
	public BuyProDTO itemList(BoardDTO dto, Model model) {
		
		log.info("Itemlist:"+service.buyproList(dto.getTno()));
	//	model.addAttribute("itemlist",service.buyproList(dto.getTno()));
	//	model.addAttribute("cobuylist",service.cobuyList(service.buyproList(dto.getTno()).getOno()));
		return service.buyproList(dto.getTno());
		
	}

}
