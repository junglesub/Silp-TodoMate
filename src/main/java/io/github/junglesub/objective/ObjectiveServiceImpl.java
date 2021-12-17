package io.github.junglesub.objective;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ObjectiveServiceImpl implements ObjectiveService{
	@Autowired
	ObjectiveDAO objectiveDAO;

	@Override
	public List<ObjectiveVO> getObjectsForProject(String projectID) {
		return objectiveDAO.getObjectsForProject(projectID);
	}

	
}
