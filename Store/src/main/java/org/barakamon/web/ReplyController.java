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

	@PostMapping("/new") // new�۾��� post�� �۾��� �ϴ°�. ��� �ۼ��ϴ� �ڵ�
	public void addReply(@RequestBody ReplyDTO rDto) {
		log.info("" + rDto);// rDTO�� ����� �������� test. ���⼭ �׽�Ʈ�ϸ� �Ķ���Ͱ��� �η� ���´�.
		service.register(rDto);
	}

	@GetMapping("/{rno}") // ��ȸ�ϴ� ����� ���±����ʹ� �ٸ� ���.
	public ReplyDTO readReply(@PathVariable("rno") Integer rno) {

		log.info("RNO: " + rno);// responseEntity�� ���ٴ� ���� �ٸ���.
		return service.get(rno);

	}

	@DeleteMapping("/{rno}")
	public ResponseEntity<String> removeReply(@PathVariable("rno") Integer rno) {

		log.info("Remove RNO:" + rno);

		service.remove(rno);

		return new ResponseEntity<String>("removed", HttpStatus.OK);
		// �������� ���� �� OK�޽��� �ϳ� ����ִ� �ڵ�.
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

		return service.listPage(new Criteria(page));
	}

}