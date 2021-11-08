package ddit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ddit.service.IMemberService;
import ddit.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/calToMain.do")
public class CalendarToMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
		
		int mem_no = Integer.parseInt( request.getParameter("mem_no") );
		
		
		IMemberService service = MemberServiceImpl.getInstance();
		MemberVO mvo = new MemberVO();
		mvo.setMem_no(mem_no);
		
		mvo = service.getMemberOne(mvo);
		
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = gson.toJson(mvo);
		out.print(jsonData);
		System.out.println("jsonData(List) : " + jsonData);
		response.flushBuffer();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
