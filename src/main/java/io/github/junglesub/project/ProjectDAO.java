package io.github.junglesub.project;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ProjectDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int createProject(ProjectVO vo) {
		int result = sqlSession.insert("Project.createProject", vo);
		return result;
	}
	
	public ProjectVO getProject(String projectID) {
		ProjectVO one = sqlSession.selectOne("Project.getProject", projectID);
		return one;
	}
	
//	public int deleteBoard(int seq) {
//		int result = sqlSession.delete("Board.deleteBoard", seq);
//		return result;
//	}
//	
//	public int updateBoard(BoardVO vo) {
//		int result = sqlSession.update("Board.updateBoard", vo);
//		return result;
//	}
}