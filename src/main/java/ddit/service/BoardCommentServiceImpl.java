package ddit.service;

import java.util.List;

import ddit.dao.BoardCommentDAOImpl;
import ddit.vo.BoardCommentVO;

public class BoardCommentServiceImpl implements IBoardCommentService {

	private static BoardCommentServiceImpl instance = null;
	private BoardCommentDAOImpl dao = null;
	
	private BoardCommentServiceImpl() {
		if(dao==null) dao = BoardCommentDAOImpl.getInstance();
	}
	
	public static BoardCommentServiceImpl getInstance() {
		if(instance==null) instance = new BoardCommentServiceImpl();
		return instance;
	}

	@Override
	public int insertBoardComment(BoardCommentVO comVO) {
		return dao.insertBoardComment(comVO);
	}

	@Override
	public int updateBoardComment(String comContent) {
		return dao.updateBoardComment(comContent);
	}

	@Override
	public int deleteBoardComment(BoardCommentVO comVO) {
		int memNo = dao.boardWriter(comVO);
		System.out.println("dkdkdk" + memNo);
		System.out.println("qweqw" + comVO.getMem_no());
		if(comVO.getMem_no()!=memNo) {
			return 0;
		} else {
			return dao.deleteBoardComment(comVO);
		}
	}

	@Override
	public List<BoardCommentVO> getBoardList(int board_no) {
		return dao.getBoardList(board_no);
	}

	@Override
	public int boardWriter(BoardCommentVO comVO) {
		return dao.boardWriter(comVO);
	}

}
