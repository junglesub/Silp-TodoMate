package io.github.junglesub.keyresult;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class KeyResultServiceImpl implements KeyResultService{
	@Autowired
	KeyResultDAO keyResultDAO;

	@Override
	public List<KeyResultVO> getKRForObj(int objectiveId) {
		return keyResultDAO.getKRForObj(objectiveId);
	}

	@Override
	public int addKeyResult(KeyResultVO vo) {
		return keyResultDAO.addKeyResult(vo);
	}

	@Override
	public int removeKeyResult(int kid) {
		return keyResultDAO.removeKeyResult(kid);
	}

	@Override
	public int updateChecked(KeyResultVO vo) {
		return keyResultDAO.updateChecked(vo);
	}

	
}
