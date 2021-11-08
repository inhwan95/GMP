package ddit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddit.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/member/memberUpdate.do")
public class memberUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
	
		HttpSession session = request.getSession();
		
		String mem_id = (String) session.getAttribute("id");
		int mem_no = (int) session.getAttribute("memNo");
		
		MemberServiceImpl service = MemberServiceImpl.getInstance();
		
		MemberVO memVo = new MemberVO();
		memVo.setMem_id(mem_id);
		memVo.setMem_no(mem_no);

		memVo = service.getMember(memVo);
		
		request.setAttribute("memVo", memVo);
		
		request.getRequestDispatcher("/WEB-INF/view/memberUpdate.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String mem_tel = request.getParameter("tel");
		String mem_addr1 = request.getParameter("addr1");
		String mem_addr2 = request.getParameter("addr2");
		int mem_no = Integer.parseInt( request.getParameter("no") );
		
		MemberVO memVo2 = new MemberVO();
		memVo2.setMem_tel(mem_tel);
		memVo2.setMem_addr1(mem_addr1);
		memVo2.setMem_addr2(mem_addr2);
		memVo2.setMem_no(mem_no);

		MemberServiceImpl.getInstance().updateMem(memVo2);
		
		response.sendRedirect(request.getContextPath() + "/member/mypage.do");
	
	}

}
