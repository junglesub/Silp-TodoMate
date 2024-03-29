package io.github.junglesub.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	ProjectDAO projectDAO;
	
	@Override
	public int createProject(ProjectVO project) {
		return projectDAO.createProject(project);
	}
	
	@Override
	public int updateProject(ProjectVO project) {
		return projectDAO.updateProject(project);
	}
	
	@Override
	public int deleteProject(String projectId) {
		return projectDAO.deleteProject(projectId);
	}

	@Override
	public ProjectVO getProject(String projectId) {
		return projectDAO.getProject(projectId);
	}

}
