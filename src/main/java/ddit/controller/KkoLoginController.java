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

@WebServlet("/member/kkoLogin.do")
public class KkoLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String kkoid = request.getParameter("id");
		System.out.println("서블릿에서의 kkoid => " + kkoid);

		MemberVO mvo = new MemberVO();
		mvo.setMem_kko(kkoid);
		IMemberService service = MemberServiceImpl.getInstance();
		mvo = service.searchKkoLogin(mvo);
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = gson.toJson(mvo);
		out.print(jsonData);
		System.out.println("jsonData => " + jsonData);
		response.flushBuffer();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
