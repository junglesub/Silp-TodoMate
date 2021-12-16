package io.github.junglesub.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String BOARD_INSERT = "insert into BOARD (title, writer, content) values (?,?,?)";
	private final String BOARD_UPDATE = "update BOARD set title=?, writer=?, content=? where seq=?";
	private final String BOARD_DELETE = "delete from BOARD  where seq=?";

	public int insertBoard(final BoardVO vo) {
		System.out.println("===> JDBC로 insertBoard() 기능 처리");
		try {
			jdbcTemplate.update(new PreparedStatementCreator() {
				
				@Override
				public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
					// TODO Auto-generated method stub
					stmt = con.prepareStatement(BOARD_INSERT);
					stmt.setString(1, vo.getTitle());
					stmt.setString(2, vo.getWriter());
					stmt.setString(3, vo.getContent());
//					stmt.executeUpdate();
					return stmt;
				}
			});
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 글 삭제
	public void deleteBoard(final int seq) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		try {
			jdbcTemplate.update(new PreparedStatementCreator() {
				
				@Override
				public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
					// TODO Auto-generated method stub
					stmt = con.prepareStatement(BOARD_DELETE);
					stmt.setInt(1, seq);
//					stmt.executeUpdate();
					return stmt;
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int updateBoard(final BoardVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		try {
			jdbcTemplate.update(new PreparedStatementCreator() {
				
				@Override
				public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
					// TODO Auto-generated method stub
					stmt = con.prepareStatement(BOARD_UPDATE);
					stmt.setString(1, vo.getTitle());
					stmt.setString(2, vo.getWriter());
					stmt.setString(3, vo.getContent());
					stmt.setInt(4, vo.getSeq());
					return stmt;
				}
			});
			
			
			System.out.println(vo.getTitle() + "-" + vo.getWriter() + "-" + vo.getContent() + "-" + vo.getSeq());
//			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}	
	
	public BoardVO getBoard(int seq) {
		
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		try {
			return jdbcTemplate.queryForObject("select * from BOARD where seq=" + seq, new BoardRowMapper());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<BoardVO> getBoardList(){
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		try {
			return jdbcTemplate.query("select * from BOARD order by regdate desc", new BoardRowMapper());
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}
}

class BoardRowMapper implements RowMapper<BoardVO> {

	@Override
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO vo = new BoardVO();
		vo.setSeq(rs.getInt("seq"));
		vo.setTitle(rs.getString("title"));
		vo.setWriter(rs.getString("writer"));
		vo.setContent(rs.getString("content"));
		vo.setRegdate(rs.getDate("regdate"));
		vo.setCnt(rs.getInt("cnt"));
		return vo;
	}

}
