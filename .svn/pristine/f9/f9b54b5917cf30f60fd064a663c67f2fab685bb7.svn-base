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

@WebServlet("/member/join2.do")
public class Join2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("아아아아");
		request.getRequestDispatcher("/WEB-INF/view/joinPage2.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
		
		String mem_id = request.getParameter("mem_id");
		System.out.println("joincontroller : "+ mem_id);
		String mem_pw = request.getParameter("mem_pw");
		System.out.println("joincontroller : "+ mem_pw);
		String mem_nm = request.getParameter("mem_nm");
		System.out.println("joincontroller : "+ mem_nm);
		String mem_birth = request.getParameter("mem_birth");
		System.out.println("joincontroller : "+ mem_birth);
		String mem_tel = request.getParameter("mem_tel");
		System.out.println("joincontroller : "+ mem_tel);
		String mem_addr1 = request.getParameter("mem_addr1");
		System.out.println("joincontroller : "+ mem_addr1);
		String mem_addr2 = request.getParameter("mem_addr2");
		System.out.println("joincontroller : "+ mem_addr2);
		String mem_mail = request.getParameter("mem_mail");
		System.out.println("joincontroller : "+ mem_mail);
		
		MemberVO memVo = new MemberVO();
		memVo.setMem_id(mem_id);
		memVo.setMem_pw(mem_pw);
		memVo.setMem_nm(mem_nm);
		memVo.setMem_birth(mem_birth);
		memVo.setMem_tel(mem_tel);
		memVo.setMem_addr1(mem_addr1);
		memVo.setMem_addr2(mem_addr2);
		memVo.setMem_mail(mem_mail);
		
		IMemberService service = MemberServiceImpl.getInstance();
		int count = service.join(memVo);

		System.out.println(count);
		
//		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		out.println(count);
		
//		String jsonData = gson.toJson(memVo);
//		out.print(jsonData);
//		System.out.println("jsonData : "+jsonData);
//		response.flushBuffer();
		
		//request.getRequestDispatcher("/loginPage.jsp").forward(request, response);
		
	}

}
