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

import ddit.service.ConferenceServiceImpl;
import ddit.vo.ConferenceVO;

@WebServlet("/conference/conferenceList.do")
public class ConferenceListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = null;
		HttpSession session = request.getSession();
		
		ConferenceServiceImpl service = ConferenceServiceImpl.getInstance();
		
		List<ConferenceVO> list = null;

		String choice = request.getParameter("choice");
		System.out.println("choice : " +choice);
		System.out.println(choice);
		System.out.println(choice);
		
		switch (choice) {
			case "list":
				list = service.getConference();
				System.out.println(list);
				
				jsonData = gson.toJson(list);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				break;
				
			case "reserve":
				
				String start = request.getParameter("startTime");
				String end = request.getParameter("endTime");
				String res_start = start.toString().split("T")[0] + start.toString().split("T")[1]; 
				String res_end = end.toString().split("T")[0] + end.toString().split("T")[1];
				String roomNo = request.getParameter("conferenceRoom");
				int con_no = Integer.parseInt(roomNo);
				int mem_no = (int) session.getAttribute("memNo");
				
				ConferenceVO cVo = new ConferenceVO();
				cVo.setCon_no(con_no);
				cVo.setMem_no(mem_no);
				cVo.setRes_start(res_start);
				cVo.setRes_end(res_end);
				
				int cnt = service.insertConference(cVo);
				
				jsonData = gson.toJson(cnt);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				break;
			
			case "delete" :
				
				int memNo = (int) session.getAttribute("memNo");
				System.out.println(memNo);
				
				String no = request.getParameter("resNo");
				int resNo = Integer.parseInt(no);
				
				
				ConferenceVO conVO = new ConferenceVO();
				conVO.setMem_no(memNo);
				conVO.setRes_no(resNo);
				System.out.println(conVO);
				
				int cnt1 = service.deleteConference(conVO);
				
				jsonData = gson.toJson(cnt1);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				break;

		}
		
//		response.flushBuffer();
//		request.getRequestDispatcher("/WEB-INF/view/ConferenceList.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
