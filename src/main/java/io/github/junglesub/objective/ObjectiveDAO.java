package io.github.junglesub.objective;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ObjectiveDAO {
	@Autowired
	SqlSession sqlSession;
	
	public List<ObjectiveVO> getObjectsForProject(String projectID) {
		List<ObjectiveVO> list = sqlSession.selectList("Objective.getObjectProjID", projectID);
		return list;
	}
	
	public int addObjective(ObjectiveVO vo) {
		return sqlSession.insert("Objective.addObjective", vo);
	}

}
