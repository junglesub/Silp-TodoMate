package io.github.junglesub.project;

public interface ProjectService {
	public int createProject(ProjectVO project);
	public ProjectVO getProject(String projectId);
}
