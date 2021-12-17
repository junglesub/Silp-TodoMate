package io.github.junglesub.objective;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.github.junglesub.keyresult.KeyResultDAO;

@Service
public class ObjectiveServiceImpl implements ObjectiveService{
	@Autowired
	ObjectiveDAO objectiveDAO;
	
	@Autowired
	KeyResultDAO keyResultDAO;

	@Override
	public List<ObjectiveVO> getObjectsForProject(String projectID) {
		List<ObjectiveVO> list = objectiveDAO.getObjectsForProject(projectID);
		for(ObjectiveVO vo : list) {
			vo.setKeyResults(keyResultDAO.getKRForObj(vo.getOid()));
			System.out.println(vo.getKeyResults());
		}
		return list;
	}

	
}
