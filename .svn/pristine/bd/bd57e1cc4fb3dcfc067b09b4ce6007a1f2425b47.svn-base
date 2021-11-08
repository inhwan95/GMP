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

@WebServlet("/deleteCalendarTest.do")
public class DeleteCalendarTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
		
		int idx =Integer.parseInt( request.getParameter("idx") );
		
		CanlendarServiceImpl service = CanlendarServiceImpl.getInstance();
		int cnt = service.deleteOneSchedule(idx);
		System.out.println("리턴 cnt 값" + cnt);
		if(cnt > 0) {
			System.out.println("delete one 성공");
			Gson gson = new Gson();
			PrintWriter out = response.getWriter();
			String jsonData = gson.toJson(cnt);
			out.print(jsonData);
			response.flushBuffer();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
