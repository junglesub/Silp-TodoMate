package io.github.junglesub.keyresult;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class KeyResultDAO {
	@Autowired
	SqlSession sqlSession;
	
	public List<KeyResultVO> getKRForObj(int objectiveId) {
		List<KeyResultVO> list = sqlSession.selectList("KeyResult.getKeyResultForObj", objectiveId);
		return list;
	}
	
	public int addKeyResult(KeyResultVO vo) {
		return sqlSession.insert("KeyResult.createKeyResult", vo);
	}
	
	public int removeKeyResult(int kid) {
		return sqlSession.delete("KeyResult.deleteKeyResult", kid);
	}

}
