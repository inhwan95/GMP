package ddit.service;

import java.util.List;

import ddit.dao.BoardDAOImpl;
import ddit.vo.BoardFileVO;
import ddit.vo.BoardVO;

public class BoardServiceImpl implements IBoardService {

	private static BoardServiceImpl instance = null;
	private BoardDAOImpl dao = null;
	
	private BoardServiceImpl() {
		if(dao==null) dao = BoardDAOImpl.getInstance();
	}
	
	public static BoardServiceImpl getInstance() {
		if(instance==null) instance = new BoardServiceImpl();
		return instance;
	}

	@Override
	public List<BoardVO> getBoardList(String boardNm) {
		return dao.getBoardList(boardNm);
	}

	@Override
	public int insertBoard(BoardVO bVo) {
		return dao.insertBoard(bVo);
	}

	@Override
	public int updateBoard(BoardVO bVo) {
		return dao.updateBoard(bVo);
	}
	
	@Override
	public int deleteBoard(BoardVO bVo) {
		int memNo = dao.boardWriter(bVo);
		if(bVo.getMem_no() != memNo) {
			return 0;
		} else {
			return dao.deleteBoard(bVo);
		}
	}

	@Override
	public BoardVO findBoard(int board_no) {
		return dao.findBoard(board_no);
	}

	@Override
	public int boardWriter(BoardVO bVo) {
		int cnt = dao.boardWriter(bVo);
		return cnt;
	}

	@Override
	public int insertBoardFile(BoardFileVO bFileVo) {
		return dao.insertBoardFile(bFileVo);
	}

	@Override
	public int updateBoardFile(int file_no) {
		return updateBoardFile(file_no);
	}

	@Override
	public int deleteBoardFile(int file_no) {
		return deleteBoardFile(file_no);
	}



}
