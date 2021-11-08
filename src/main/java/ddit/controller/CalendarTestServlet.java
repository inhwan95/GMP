package ddit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ddit.service.CanlendarServiceImpl;
import ddit.vo.ScheduleMemberVO;
import ddit.vo.Schedule_EventVO;


@WebServlet("/calendarTest.do")
public class CalendarTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
// json 문자열을 자바 객체로 변환하는, 바꿔주는 메소드? 타입은 List 변환시켜야한다(vo에 담아서) 
// insert 실행
	
	// 넘겨받은 alldata 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String title = request.getParameter("title");
		boolean allDay = Boolean.parseBoolean(request.getParameter("allDay"));
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String id = request.getParameter("id");
		int mem_no = Integer.parseInt( request.getParameter("mem_no") );
		int dept_no = Integer.parseInt( request.getParameter("dept_no") );
		System.out.println("calendar Test 서블릿에서의 mem_no : " + mem_no);
		System.out.println("calendar Test 서블릿에서의 dept_no : " + dept_no);
		
		String allDayStr = "";
		
		ScheduleMemberVO vo = new ScheduleMemberVO();
		
		if(allDay == true) {
			allDayStr = "1";
		}else if(allDay == false){
			allDayStr = "0";
		}
		
		vo.setTitle(title);
		vo.setAllDayStr(allDayStr);
		vo.setStart(start);
		vo.setEnd(end);
		vo.setId(id);
		vo.setMem_no(mem_no);
		vo.setDept_no(dept_no);
		
		System.out.println("getMem_no => " + mem_no);
		System.out.println("getDept_no => " + dept_no);
		// Gson gson = new Gson();
		
		// Schedule_EventVO  vo =  gson.fromJson(alldata, Schedule_EventVO.class);
		int cnt = 0;
		CanlendarServiceImpl service = CanlendarServiceImpl.getInstance(); 
		
		//service.deleteAllSchedule();
		cnt = service.insertSchedule( vo );
		
		if ( cnt > 0 ) {
			Gson gson = new Gson();
			PrintWriter out = response.getWriter();
			
			String jsonData = gson.toJson(vo);
			out.print(jsonData);
			System.out.println("jsonData : "+jsonData);
			response.flushBuffer();
			
			
		}else {	
			System.out.println("cnt : "+cnt);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
