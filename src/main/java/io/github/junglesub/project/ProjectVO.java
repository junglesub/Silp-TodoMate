package io.github.junglesub.project;

import java.util.List;

import io.github.junglesub.objective.ObjectiveVO;

public class ProjectVO {
	
	private String projectId, title, owner;
	
	private List<ObjectiveVO> objectives;

	public List<ObjectiveVO> getObjectives() {
		return objectives;
	}

	public void setObjectives(List<ObjectiveVO> list) {
		this.objectives = list;
	}

	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}
	
	

}
