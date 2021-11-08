package ddit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import ddit.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/member/mypage.do")
public class mypageController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      response.setCharacterEncoding("utf-8");
      response.setContentType("text/html; utf-8");
      
      Gson gson = new Gson();
      PrintWriter out = response.getWriter();
      String jsonData = null;
      HttpSession session = request.getSession();
      
      String mem_id = request.getParameter("id");
//      int mem_no = Integer.parseInt(request.getParameter("mem_no"));
      String no = request.getParameter("no");
      int mem_no = Integer.parseInt(no);
      System.out.println("mypage.do에서의 ID =>" + mem_id);
      System.out.println("mypage.do에서의 no =>" + mem_no);
      
      MemberServiceImpl service = MemberServiceImpl.getInstance();
      
      MemberVO memVo = new MemberVO();
      MemberVO memVo2 = null;
      memVo.setMem_id(mem_id);
      memVo.setMem_no(mem_no);
      
      memVo2 = service.getMember(memVo);

      jsonData = gson.toJson(memVo2);
      out.print(jsonData);
      System.out.println(jsonData);
      response.flushBuffer();
      
      
      
   
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}