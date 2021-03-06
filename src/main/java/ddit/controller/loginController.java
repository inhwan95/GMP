package ddit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddit.service.IMemberService;
import ddit.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/member/login.do")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
		
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		System.out.println("login.jsp 에서 넘어오는 아이디"+mem_id );
		System.out.println(mem_pw );
		HttpSession session = request.getSession();
		
		IMemberService service = MemberServiceImpl.getInstance();
		MemberVO memVo = new MemberVO();
		MemberVO memVo2 = null;
		memVo.setMem_id(mem_id);
		memVo.setMem_pw(mem_pw);
		
		memVo2 = service.login(memVo);
//		if(memVo2.getMem_id() == null) {
		System.out.println(memVo2);
		if(memVo2 == null) {
//			request.getRequestDispatcher("/WEB-INF/view/loginPage.jsp").forward(request, response);
//			request.getRequestDispatcher("/loginPage.jsp").forward(request, response);
			response.sendRedirect(request.getContextPath()+"/loginPage.jsp");
		} else {
			session.setAttribute("id", memVo2.getMem_id());
			session.setAttribute("dept", memVo2.getDept_no());
			session.setAttribute("posi", memVo2.getPosi_no());
			session.setAttribute("posiName", memVo2.getPosi_nm());
			session.setAttribute("deptName", memVo2.getDept_nm());
			session.setAttribute("name", memVo2.getMem_nm());
			session.setAttribute("tel", memVo2.getMem_tel());
			session.setAttribute("mail", memVo2.getMem_mail());
			session.setAttribute("memNo", memVo2.getMem_no());
			session.setAttribute("auth", memVo2.getAuth());
			System.out.println("넘어갈때 세션 ID   " + session.getAttribute("id"));
			System.out.println("넘어갈때 세션 memNo  " + session.getAttribute("memNo"));
			System.out.println("해당직원 부서명  " + session.getAttribute("deptName"));
			
			
			request.getRequestDispatcher("/WEB-INF/view/mainPageLNY.jsp").forward(request, response);
//			response.sendRedirect(request.getContextPath()+"/mainPage.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
