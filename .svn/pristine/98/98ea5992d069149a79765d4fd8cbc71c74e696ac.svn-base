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

import ddit.service.ChatServiceImpl;
import ddit.service.IChatService;
import ddit.vo.MessageVO;

@WebServlet("/loadChat.do")
public class LoadChatlogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		int mem_no = Integer.parseInt( request.getParameter("mem_no") );
		
		IChatService service = ChatServiceImpl.getInstance();
		List<MessageVO> list = new ArrayList<>();
		list = service.loadMessage(mem_no);

		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = gson.toJson(list);
		out.print(jsonData);
		System.out.println("jsonData(List) : " + jsonData);
		response.flushBuffer();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
