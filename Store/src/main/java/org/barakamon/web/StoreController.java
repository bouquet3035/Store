package org.barakamon.web;


import java.util.Arrays;


import org.barakamon.dto.BoardDTO;
import org.barakamon.dto.Criteria;
import org.barakamon.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;

@Controller
@RequestMapping("/store/*")
@Log
public class StoreController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/main")
	public void main() {
		
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String registerPost(BoardDTO bDto,Model model) {
		log.info("POST");
		
		service.registerPost(bDto);
		model.addAttribute("register","success"); 
		
		return "redirect:/store/list";
	}
	
	@GetMapping("/list")
	public void list(@ModelAttribute("cri") Criteria cri,Model model) {
		
		model.addAttribute("list",service.list(cri));
		
	}
	
	@GetMapping("/view")
	public void view(BoardDTO dto, @ModelAttribute("cri") Criteria cri, Model model) {
		model.addAttribute("tobuy", service.get(dto.getTno()));
	}
	@PostMapping
	public String removePost(BoardDTO bDto, Model model) {
		
		service.remove(bDto.getTno());
		model.addAttribute("remove", "delsuccess");
		
		return "redirect:/store/list";
	}
}
