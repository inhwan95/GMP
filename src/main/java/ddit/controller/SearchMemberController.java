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

@WebServlet("/searchMemberController.do")
public class SearchMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
		
		String mem_id = request.getParameter("mem_id");
		int mem_no = Integer.parseInt( request.getParameter("mem_no") );
		MemberVO mvo = new MemberVO();
		mvo.setMem_no(mem_no);
		mvo.setMem_id(mem_id);
		IMemberService service = MemberServiceImpl.getInstance();
		mvo = service.getMember(mvo);
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = gson.toJson(mvo);
		out.print(jsonData);
		System.out.println("jsonData : "+jsonData);
		response.flushBuffer();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
