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

@WebServlet("/member/join.do")
public class joinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
		
		String id = request.getParameter("kkoId");
		System.out.println("회원가입 페이지에서의 카카오톡 id : " + id);

		String nickname = request.getParameter("nickname");	
		System.out.println("회원가입 페이지에서의 카카오톡 nickname : " + nickname);
		
		Boolean isemail;
		String email;
		Boolean isgender;
		String gender;
		
		if(request.getParameter("isemail").equals("false")) {
			isemail = Boolean.parseBoolean( request.getParameter("isemail") );
			System.out.println("이메일 체크"+isemail);
			email = request.getParameter("email");
			System.out.println("이메일"+email);
			request.setAttribute("email", email);
		}else {
			System.out.println("넘어온 isemail, email 값이 없습니다");
		}

		if(request.getParameter("isgender").equals("false")) {
			isgender = Boolean.parseBoolean( request.getParameter("isgender") );
			System.out.println("성별체크"+isgender);
			gender = request.getParameter("gender");
			System.out.println("성별"+gender);
			request.setAttribute("gender", gender);
		}else {
			System.out.println("넘어온 isgender, gender 값이 없습니다");
		}
		
		request.setAttribute("kkoid", id);
		request.setAttribute("nickname", nickname);
		
		request.getRequestDispatcher("/WEB-INF/view/joinPage.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
		String kkoid= request.getParameter("kkoid");
		System.out.println("POST 에서의 kkoid"+kkoid);
		
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
		memVo.setMem_kko(kkoid);
		
		IMemberService service = MemberServiceImpl.getInstance();
		int count = service.join(memVo);

		System.out.println(count);
		
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		
		String jsonData = gson.toJson(memVo);
		out.print(jsonData);
		System.out.println("jsonData : "+jsonData);
		response.flushBuffer();
	}

}