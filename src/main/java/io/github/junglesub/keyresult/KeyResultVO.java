package io.github.junglesub.keyresult;

public class KeyResultVO {
	int kid, objectiveId, completed;
	String ktitle;
	public int getKid() {
		return kid;
	}
	public void setKid(int kid) {
		this.kid = kid;
	}
	public int getObjectiveId() {
		return objectiveId;
	}
	public void setObjectiveId(int objectiveId) {
		this.objectiveId = objectiveId;
	}
	public boolean getBCompleted() {
		return completed == 1;
	}
	public int getCompleted() {
		return completed;
	}
	public void setCompleted(int completed) {
		this.completed = completed;
	}
	public String getKtitle() {
		return ktitle;
	}
	public void setKtitle(String ktitle) {
		this.ktitle = ktitle;
	}
	
	
}
