package io.github.junglesub.keyresult;

import java.util.List;

public interface KeyResultService {
	public List<KeyResultVO> getKRForObj(int objectiveId);
	public int addKeyResult(KeyResultVO vo);
}
