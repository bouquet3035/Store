package org.barakamon.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.inject.Inject;

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

		log.info("EhEh" + member);
		model.addAttribute("memberDTO", member);

	}

	@GetMapping("/logout")
	public void logout() {
	}

	@GetMapping("/loginresult")
	public void loginresult() {
		log.info("�α��� ��� ������");
	}

	@PostMapping("/loginresult")
	public void loginresultpost(LoginDTO lDto, Model model) {

		log.info("�� �޾Ҵ�");
		MemberDTO member = new MemberDTO();
		model.addAttribute("memberDTO", member);

	}

	@GetMapping("/memberregister")
	public void memberregister() throws Exception {
		log.info("ȸ������ GET");
	}

	@PostMapping("/memberregister")
	public String memberregisterpost(MemberDTO mDto, Model model) throws Exception {
		//log.info("ȸ������ ������ ����" + mDto);
		log.info("�־ȵǳ�" + mDto.toString());
		
		service.registermemberPost(mDto);
		
		model.addAttribute("register", "success");

		return "redirect:/login";
	}
}
