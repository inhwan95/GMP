package ddit.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.BoardCommentVO;

public class BoardCommentDAOImpl implements IBoardCommentDAO{

	private static BoardCommentDAOImpl instance = null;
	private SqlMapClient smc = null;
	private BoardCommentDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static BoardCommentDAOImpl getInstance() {
		if(instance==null) instance = new BoardCommentDAOImpl();
		return instance;
	}


	@Override
	public int insertBoardComment(BoardCommentVO comVO) {
		int cnt = 0;
		try {
			Object obj = smc.insert("board_comment.boardCommentInsert", comVO);
			if(obj==null) cnt=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}


	@Override
	public int updateBoardComment(String comContent) {
		//수정따윈 없다
		int cnt = 0;
		try {
			Object obj = smc.insert("board_comment.boardCommentUpdate",comContent);
			if(obj==null) cnt=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}


	@Override
	public int deleteBoardComment(BoardCommentVO comVO) {
		int cnt = 0;
		try {
			Object obj = smc.delete("board_comment.boardDelete", comVO);
			if(obj==null) cnt=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<BoardCommentVO> getBoardList(int board_no) {
		List<BoardCommentVO> list = null;
		try {
			list = smc.queryForList("board_comment.getBoardCommentList", board_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int boardWriter(BoardCommentVO comVO) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board_comment.commentWriter", comVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}



}
