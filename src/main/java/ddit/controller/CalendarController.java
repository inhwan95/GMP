package ddit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.service.IMemberService;
import ddit.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/calendarController.do")
public class CalendarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		int mem_no = Integer.parseInt( request.getParameter("mem_no") );
		
		IMemberService service = MemberServiceImpl.getInstance();
		MemberVO mvo = new MemberVO();
		mvo.setMem_no(mem_no);
		mvo = service.getMemberOne(mvo);
		
		request.setAttribute("mem_no", mvo.getMem_no());
		request.setAttribute("dept_no", mvo.getDept_no());
		System.out.println("Calendar Controller에서의 mem_no =>"+mem_no);
		System.out.println("Calendar Controller에서의 dept_no =>"+mvo.getDept_no());
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/CalendarPage.jsp");
		rd.forward(request, response);
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
