package org.barakamon.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.barakamon.dto.LoginDTO;
import org.barakamon.dto.MemberDTO;
import org.barakamon.service.MemberService;

import lombok.extern.java.Log;

@Controller
@Log
public class MemberController {

	@Inject
	private MemberService service;

	@GetMapping("/login")
	public void login() {
		log.info("get.....login");
	}

	@PostMapping("/login")
	public void loginPost(LoginDTO dto, Model model) throws Exception {
		

		log.info("post...login" + dto);
		
		MemberDTO member = service.login(dto);
		

		log.info("EhEh"+member);
		model.addAttribute("memberDTO", member);

		
	}

	@GetMapping("/loginresult")
	public void loginresult() {
		log.info("로그인 결과 페이지");
	}

	@PostMapping("/loginresult")
	public void loginresultpost(LoginDTO lDto, Model model) {

		log.info("잘 받았니");
		MemberDTO member = new MemberDTO();
		model.addAttribute("memberDTO", member);

	}
	
	
}
