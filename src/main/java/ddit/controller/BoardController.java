package ddit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import ddit.service.BoardCommentServiceImpl;
import ddit.service.BoardServiceImpl;
import ddit.vo.BoardCommentVO;
import ddit.vo.BoardVO;


@WebServlet("/board/board.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();

		String choice = request.getParameter("choice");	//jsp의 값을 가져오려고
		String board_no = request.getParameter("board_no");
		String board_nm = request.getParameter("board_nm");
		String board_title = request.getParameter("board_title");
		String board_content = request.getParameter("board_content");
		String board_comm = request.getParameter("board_comm");
		String comm_no = request.getParameter("comm_no");
		
//	String content1 = board_content.toString().split("<p>")[0]
		 
		System.out.println("choice" + choice);
		System.out.println("board_no ::"+board_no);
		
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = null;
		
		BoardServiceImpl boardService = BoardServiceImpl.getInstance();
		BoardCommentServiceImpl boardCommentService = BoardCommentServiceImpl.getInstance();
		List<BoardVO> boardList = null;
		List<BoardCommentVO> boardCommentList = null;
		BoardCommentVO bCVo = null;
		BoardVO bVo = null;
		int count = 0;
		
		
		
		//////
		switch (choice) {
		case "자유":
			boardList = boardService.getBoardList(choice);
			jsonData = gson.toJson(boardList);
			out.print(jsonData);
			System.out.println(jsonData);
			response.flushBuffer();
			break;
		case "공지":
			boardList = boardService.getBoardList(choice);
			jsonData = gson.toJson(boardList);
			out.print(jsonData);
			System.out.println(jsonData);
			response.flushBuffer();
			break;
		
		case "세부":
			bVo = boardService.findBoard(Integer.parseInt(board_no));
			jsonData = gson.toJson(bVo);
			out.print(jsonData);
			System.out.println(jsonData);
			response.flushBuffer();
			break;
			
		case "추가" :
			bVo = new BoardVO();
			bVo.setMem_no((int) session.getAttribute("memNo"));
			bVo.setBoard_nm(request.getParameter("board_nm"));
			bVo.setBoard_title(board_title);
			bVo.setBoard_writer((String) session.getAttribute("name"));
			bVo.setBoard_content(board_content);
			
			count = boardService.insertBoard(bVo);
			jsonData = gson.toJson(count);
			out.print(jsonData);
			System.out.println(jsonData);
			response.flushBuffer();
			break;
		
		case "삭제":
			bVo = new BoardVO();
			bVo.setBoard_no(Integer.parseInt(board_no));
			bVo.setMem_no((int) session.getAttribute("memNo"));
			
			count = boardService.deleteBoard(bVo);
			jsonData = gson.toJson(count);
			out.print(jsonData);
			System.out.println(jsonData);
			response.flushBuffer();
			break;
			
		case "댓글리스트":
			// 멤버 넘버는 세션으로 해서 로그인 한사람으로 이름 가져오고
			boardCommentList = boardCommentService.getBoardList(Integer.parseInt(board_no));
			
			jsonData = gson.toJson(boardCommentList);
			out.print(jsonData);
			System.out.println(jsonData);
			response.flushBuffer();
			break;
		case "댓글추가":
			bCVo = new BoardCommentVO();
			bCVo.setMem_no((int) session.getAttribute("memNo"));
			bCVo.setBoard_no(Integer.parseInt(board_no));
			bCVo.setComm_content(board_comm);
			
			count = boardCommentService.insertBoardComment(bCVo);
			jsonData = gson.toJson(count);
			out.print(jsonData);
			System.out.println(jsonData);
			response.flushBuffer();
			break;
			
		case "댓글삭제":
			bCVo = new BoardCommentVO();
//			bCVo.setBoard_no(Integer.parseInt(board_no));
			bCVo.setMem_no((int) session.getAttribute("memNo"));
			bCVo.setComm_no(Integer.parseInt(comm_no));

			count = boardCommentService.deleteBoardComment(bCVo);
			jsonData = gson.toJson(count);
			out.print(jsonData);
			System.out.println(jsonData);
			response.flushBuffer();
			break;
		
		default:
			break;
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	
	}

}
