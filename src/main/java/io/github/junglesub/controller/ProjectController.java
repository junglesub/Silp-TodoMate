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
import io.github.junglesub.objective.ObjectiveService;
import io.github.junglesub.project.ProjectService;
import io.github.junglesub.project.ProjectVO;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/proj/{id}")
public class ProjectController {

	@Autowired
	ProjectService projectService;
	
	@Autowired
	ObjectiveService objectiveService;

	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String mainpage(@PathVariable String id, Model model) {
		ProjectVO projectVO = projectService.getProject(id);
		projectVO.setObjectives(objectiveService.getObjectsForProject(projectVO.getProjectId()));
		
		System.out.println(projectVO.getObjectives());
//		logger.info(projectVO.getObjectives().toString());
		
		model.addAttribute("p", projectVO);
		
//		model.addAttribute("list", boardService.getBoardList());
		return "project/viewproj";
	}

}
