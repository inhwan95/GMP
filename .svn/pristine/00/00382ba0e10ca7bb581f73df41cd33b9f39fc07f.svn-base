package ddit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ddit.service.CanlendarServiceImpl;
import ddit.vo.ScheduleMemberVO;
import ddit.vo.Schedule_EventVO;

@WebServlet("/loadCalendarTest.do")
public class LoadCalendarTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
		
		int mem_no = Integer.parseInt(  request.getParameter("mem_no") );
		System.out.println("loadCalendarTest 에서의 mem_no => "+mem_no);
		
		CanlendarServiceImpl service = CanlendarServiceImpl.getInstance();
		List<ScheduleMemberVO> list = new ArrayList<>();
		list = service.loadSchedule(mem_no);
		
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getAllDayStr().equals("1")) {
				list.get(i).setAllDay(true);
			}else if(list.get(i).getAllDayStr().equals("0")) {
				list.get(i).setAllDay(false);
				//list.remove(i).getAllDayStr();
			}// if 문
			
			if(list.get(i).getTitle().equals("휴가")) {
				list.get(i).setBackgroundColor("#a9e34b");
			}
			if(list.get(i).getTitle().equals("출장")) {
				list.get(i).setBackgroundColor("#FFCD28");
			}
			if(list.get(i).getTitle().equals("당직")) {
				list.get(i).setBackgroundColor("#C964E2");
			}
			if(list.get(i).getTitle().equals("회의")) {
				list.get(i).setBackgroundColor("#EA813D");
			}
			
			//list.remove(i).getAllDayStr();
		}//for문
		
		 
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = gson.toJson(list);
		out.print(jsonData);
		System.out.println("jsonData(List) : " + jsonData);
		response.flushBuffer();
	}

}
