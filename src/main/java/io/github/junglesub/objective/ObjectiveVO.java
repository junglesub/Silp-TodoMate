package io.github.junglesub.objective;

import java.util.List;

import io.github.junglesub.keyresult.KeyResultVO;

public class ObjectiveVO {
	int oid;
	String projectId, otitle, label, assignee;
	
	private List<KeyResultVO> keyResults;
	
	public List<KeyResultVO> getKeyResults() {
		return keyResults;
	}
	public void setKeyResults(List<KeyResultVO> keyResults) {
		this.keyResults = keyResults;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	public String getOtitle() {
		return otitle;
	}
	public void setOtitle(String otitle) {
		this.otitle = otitle;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getAssignee() {
		return assignee;
	}
	public void setAssignee(String assignee) {
		this.assignee = assignee;
	}
}
