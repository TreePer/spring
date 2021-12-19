package cs.dit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cs.dit.model.BoardVO;
import cs.dit.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService bservice;
	
	@GetMapping("/list")
	public void boardListGET(Model model) {
		model.addAttribute("list", bservice.getList());
	}
	
	@GetMapping("/enroll")
	public void boardEnrollGET() {
	}
	
	@PostMapping("/enroll")
	public String boardEnrollPost(BoardVO board) {
		bservice.enroll(board);		
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/get")
	public void boardGetPageGet(int boardnum, Model model) {
		model.addAttribute("pageInfo", bservice.getPage(boardnum));
	}
	
	@GetMapping("/update")
	public void boardUpdateGET(int boardnum, Model model) {
		model.addAttribute("pageInfo", bservice.getPage(boardnum));
	}
	
	@PostMapping("/update")
	public String boardUpdatePOST(BoardVO board) {
		bservice.update(board);

		return "redirect:/board/list";
	}
	
	@GetMapping("/delete")
	public String boardDeleteGET(int boardnum) {
		bservice.delete(boardnum);

		return "redirect:/board/list";
	}

}
