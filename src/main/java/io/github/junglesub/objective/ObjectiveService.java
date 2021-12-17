package io.github.junglesub.objective;

import java.util.List;

public interface ObjectiveService {
	public List<ObjectiveVO> getObjectsForProject(String projectID);
}
