package io.github.junglesub.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.github.junglesub.board.BoardService;
import io.github.junglesub.board.BoardVO;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/board")
public class BoardController {

	@Autowired
	BoardService boardService;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String boardList(Locale locale, Model model) {
		model.addAttribute("list", boardService.getBoardList());
		return "list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost(Locale locale, Model model) {
		return "addpostform";
	}

	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(BoardVO vo) {
		if(boardService.insertBoard(vo) == 0)
			System.out.println("������ �߰� ����");
		return "redirect:list";
	}

	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable int id, Model model) {
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("u", boardVO);
		return "editform";
	}

	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOkl(BoardVO vo) {
		if (boardService.updateBoard(vo) == 0)
			System.out.println("������ ���� ����");
		else
			System.out.println("������ ���� ����!!!");
		return "redirect:list";
	}

	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOk(@PathVariable("id") int id) {
		if (boardService.deleteBoard(id) == 0)
			System.out.println("������ ���� ����");
		else
			System.out.println("������ ���� ����!!!");
		return "redirect:../list";
	}

}
