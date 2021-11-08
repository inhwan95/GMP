	package ddit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddit.service.ChatServiceImpl;
import ddit.service.IChatService;
import ddit.service.IMemberService;
import ddit.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/chatController.do")
public class ChatController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		int mem_no = Integer.parseInt( request.getParameter("mem_no") );
		
		IMemberService service= MemberServiceImpl.getInstance();
		MemberVO mvo = new MemberVO();
		mvo.setMem_no(mem_no);
		
		mvo = service.getMemberOne(mvo);
		
		String mem_nm = mvo.getMem_nm();
		
		System.out.println("chatController 에서의 mem_no =>"+mem_no);
		System.out.println("chatController 에서의 mem_nm =>"+mem_nm);
		
		
		request.setAttribute("mem_no", mem_no);
		request.setAttribute("mem_nm", mem_nm);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/chattingPage.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
