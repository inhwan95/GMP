package ddit.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.BoardFileVO;
import ddit.vo.BoardVO;

public class BoardDAOImpl implements IBoardDAO {
	// 싱글톤
	private static BoardDAOImpl instance = null;
	private SqlMapClient smc = null;
	
	private BoardDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	public static BoardDAOImpl getInstance() {
		if(instance==null) instance = new BoardDAOImpl();
		
		return instance;
	}

	@Override
	public List<BoardVO> getBoardList(String boardNm) {
		List<BoardVO> list = null;
		try {
			list = smc.queryForList("board.getBoardList",boardNm);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int insertBoard(BoardVO bVo) {
		int cnt = 0;
		try {
			Object obj = smc.insert("board.boardInsert",bVo);
			if(obj==null) cnt=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public int updateBoard(BoardVO bVo) {
		int cnt = 0;
		try {
			Object obj = smc.insert("board.boardUpdate",bVo);
			if(obj==null) cnt=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	@Override
	public int deleteBoard(BoardVO bVo) {
		int cnt = 0;
		try {
			Object obj = smc.delete("board.boardDelete", bVo);
			if(obj==null) cnt=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	@Override
	public BoardVO findBoard(int board_no) {
		BoardVO bvo = null;
		try {
			bvo = (BoardVO) smc.queryForObject("board.findBoard", board_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bvo;
	}
	@Override
	public int boardWriter(BoardVO bVo) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.boardWriter", bVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public int insertBoardFile(BoardFileVO bFileVo) {
		int cnt = 0;
		return cnt;
	}
	@Override
	public int updateBoardFile(int file_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int deleteBoardFile(int file_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	
}
