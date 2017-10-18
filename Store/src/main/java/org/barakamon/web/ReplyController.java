package org.barakamon.web;

import java.util.List;

import org.barakamon.dto.Criteria;
import org.barakamon.dto.ReplyDTO;
import org.barakamon.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.java.Log;

@RestController
@RequestMapping("/reply/*")
@Log
public class ReplyController {

	@Autowired
	private ReplyService service;

	@PostMapping("/new") // new작업은 post로 작업을 하는것. 댓글 작성하는 코드
	public void addReply(@RequestBody ReplyDTO rDto) {
		log.info("ReplyDTO" + rDto);// rDTO가 제대로 들어오는지 test. 여기서 테스트하면 파라미터값이 널로 들어온다.
		service.register(rDto);
	}

	@GetMapping("/{rno}") // 조회하는 방법이 여태까지와는 다른 방법.
	public ReplyDTO readReply(@PathVariable("rno") Integer rno) {

		log.info("RNO: " + rno);// responseEntity를 쓴다는 점이 다른점.
		return service.get(rno);

	}

	@DeleteMapping("/{rno}")
	public ResponseEntity<String> removeReply(@PathVariable("rno") Integer rno) {

		log.info("Remove RNO:" + rno);

		service.remove(rno);

		return new ResponseEntity<String>("removed", HttpStatus.OK);
		// 브라우저에 삭제 후 OK메시지 하나 띄워주는 코드.
	}

	@PutMapping("/{rno}")
	public ResponseEntity<String> updateReply(@PathVariable("rno") Integer rno, @RequestBody ReplyDTO rDto) {

		rDto.setRno(rno);

		log.info("Remove rno:" + rno);

		service.update(rDto);

		return new ResponseEntity<String>("removed", HttpStatus.OK);

	}

	@GetMapping("list/{page}")
	public List<ReplyDTO> list(@PathVariable("page") int page) {
		log.info("" + page);
		return service.listPage(new Criteria(page));
	}

}