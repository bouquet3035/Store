package org.barakamon.web;

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
	public String registerPost() {
		log.info("POST");
		
		return "redirect:/store/list";
	}
	
	@GetMapping("/list")
	public void list(@ModelAttribute("cri") Criteria cri,Model model) {
		
		model.addAttribute("list",service.list(cri));
		
	}

}
