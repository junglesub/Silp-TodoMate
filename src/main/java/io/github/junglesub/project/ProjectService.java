package io.github.junglesub.project;

public interface ProjectService {
	public int createProject(ProjectVO project);
	public int deleteProject(String projectId);
	public ProjectVO getProject(String projectId);
}
