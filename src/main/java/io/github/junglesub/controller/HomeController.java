package io.github.junglesub.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.github.junglesub.project.ProjectVO;
import io.github.junglesub.project.ProjectService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	ProjectService projectService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/newproj", method = RequestMethod.GET)
	public String addProjectHome() {		
		return "addprojectform";
	}
	
	@RequestMapping(value = "/newproj/ok", method = RequestMethod.POST)
	public String addProject(ProjectVO vo) {
		String randomId = "";
		for (int i=0; i<5; i++) {
			randomId += (char) ((Math.random() * 26) + 97);
		}
		System.out.println(randomId);
		vo.setProjectId(randomId);
		projectService.createProject(vo);
		return "redirect:/proj/"+vo.getProjectId();
	}
}
