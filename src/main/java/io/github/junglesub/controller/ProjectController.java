package io.github.junglesub.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.github.junglesub.exception.ResourceNotFoundException;
import io.github.junglesub.keyresult.KeyResultService;
import io.github.junglesub.keyresult.KeyResultVO;
import io.github.junglesub.objective.ObjectiveService;
import io.github.junglesub.objective.ObjectiveVO;
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
	
	@Autowired
	KeyResultService keyResultService;

	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String mainpage(@PathVariable String id, Model model) {
		ProjectVO projectVO = projectService.getProject(id);
		if(projectVO == null) {
			throw new ResourceNotFoundException();
		}
		
		projectVO.setObjectives(objectiveService.getObjectsForProject(projectVO.getProjectId()));
		
		System.out.println(projectVO.getObjectives());
//		logger.info(projectVO.getObjectives().toString());
		
		model.addAttribute("p", projectVO);
		
//		model.addAttribute("list", boardService.getBoardList());
		return "project/viewproj";
	}
	
	@RequestMapping(value="addkresult", method = RequestMethod.POST)
	public String addKeyResult(@PathVariable String id, KeyResultVO vo) {
		keyResultService.addKeyResult(vo);
		return "redirect:/proj/"+id;
	}
	
	@RequestMapping(value="delKRes/{keyid}", method = RequestMethod.GET)
	public String deleteKeyResult(@PathVariable String id, @PathVariable int keyid) {
		keyResultService.removeKeyResult(keyid);
		return "redirect:/proj/"+id;
	}
	
	@RequestMapping(value="addobjective", method = RequestMethod.POST)
	public String addObjective(@PathVariable String id, ObjectiveVO vo) {
		vo.setAssignee("김한동");
		vo.setProjectId(id);
		objectiveService.addObjectiveVO(vo);
		return "redirect:/proj/"+id;
	}

}
